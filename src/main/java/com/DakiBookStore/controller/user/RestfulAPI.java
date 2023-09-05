package com.DakiBookStore.controller.user;


import com.DakiBookStore.config.Config;
import com.DakiBookStore.dto.AccountDTO;
import com.DakiBookStore.dto.InfomationDTO;
import com.DakiBookStore.dto.PaymentDTO;
import com.DakiBookStore.model.*;
import com.DakiBookStore.service.*;;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.Principal;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.*;


@Controller(value = "HomeOfUser")
//
//@RestController
//@RequestMapping("/")
public class RestfulAPI {

    @Autowired
    private BlogService blogService;

    @Autowired
    private BookService bookService;

    @Autowired
    private AuthorService authorService;

    @Autowired
    private AccountService accountService;
    @Autowired
    private PictureService pictureService;
    @Autowired
    private CartService cartService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private BookDetailsService bookDetailsService;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private InformationAccountService informationAccountService;
    @Autowired
    HttpServletRequest req;

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public ModelAndView homePage() {
        List<Book> bestSeller = bookService.findBestSellerBooks();
        List<Author> FavoriteAuthor = authorService.findFavoriteAuthor();
        List<Book> Featured = bookService.findFeaturedBooks();
        for (Book book : bestSeller) {
            Picture pictures = pictureService.findByBookID(book.getId());
            Book_Details bookDetails = bookDetailsService.findByBookID(book.getId());
            book.setBookDetails(bookDetails);
            book.setPicture(pictures);
        }

        ModelAndView mav = new ModelAndView("user/home");
        mav.addObject("bestSeller", bestSeller);
        mav.addObject("FavoriteAuthor", FavoriteAuthor);
        mav.addObject("Featured", Featured);
        return mav;
    }

    //    ===REGISTER====
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView registerPage() {
        ModelAndView mav = new ModelAndView("register");
        return mav;
    }

    @PostMapping("/register")
    public String register(@ModelAttribute("accountDTO") AccountDTO accountDTO, Model model) {
        String errorMes = "";
        if (accountService.existsAccountByUsername(accountDTO.getUsername())) {
            errorMes = "This username was taken";
            model.addAttribute("check", errorMes);
            return "register";
        }
        if (!accountDTO.getPassword().equals(accountDTO.getRepeatPassword())) {
            errorMes = "Password not same, try again";
            model.addAttribute("check", errorMes);
            return "register";
        }
        accountService.register(accountDTO);
        return "redirect:/login";
    }

    @RequestMapping(value = "/forgotPassword", method = RequestMethod.GET)
    public ModelAndView forgotPasswordPage() {
        ModelAndView mav = new ModelAndView("forgotPassword");
        return mav;
    }

    @PostMapping("/forgotPassword")
    public String forgotPassword(@ModelAttribute("accountDTO") AccountDTO accountDTO, Model model) {
        String error = accountService.forgetPassword(accountDTO);
        if (error != null) {
            model.addAttribute("check", error);
            return "forgotPassword";
        }
        return "redirect:/login";
    }
//   =====LOGIN===

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView loginPage() {
        ModelAndView mav = new ModelAndView("login");
        return mav;
    }

    public ModelAndView headerPage() {
        ModelAndView mav = new ModelAndView("login");
        return mav;
    }

    //    ====HEADER====
    @GetMapping("/user/detailsAccount/{username}")
    public ModelAndView showDetailsAccount(@PathVariable("username") String username) {
        // Truy vấn thông tin chi tiết Account theo username
        Account account = accountService.findByUsername(username);
        // Tạo đối tượng ModelAndView và thiết lập tên view và model
        List<Order> orderList = account.getOrders();
        InformationAccount infor = informationAccountService.findByAccountID(account.getId());
        ModelAndView mav = new ModelAndView("user/detailAccount");
        mav.addObject("account", account);
        mav.addObject("orders", orderList);
        mav.addObject("information", infor);
        return mav;
    }
    @PostMapping("/user/detailsAccount")
    public String updateInfomation(@RequestParam("id") Long id,@ModelAttribute("infomationDTO") InfomationDTO infomationDTO) {
        accountService.updateAddress(infomationDTO,id);
        Account account = accountService.findById(id);
        String username = account.getUsername();
        return "redirect:"+"/user/detailsAccount/"+username;
    }
    @RequestMapping(value = "/user/ShopList", method = RequestMethod.GET)
    public ModelAndView ShopListPage(@RequestParam("p") Optional<Integer> p) {
        List<Book> book = bookService.findAll();
        Pageable pageable = PageRequest.of(p.orElse(0), 8);
        Page<Book> page = bookService.findAll(pageable);
        Long countBook = bookService.coundAllBook();
        List<Author> author = authorService.findAll();
        List<Category> categoryList = categoryService.findAll();

        ModelAndView mav = new ModelAndView("user/ShopList");
        mav.addObject("book", book);
        mav.addObject("List_book_paging", page);
        mav.addObject("countBook", countBook);
        mav.addObject("List_author", author);
        mav.addObject("List_category", categoryList);
        return mav;
    }

    @RequestMapping(value = "/user/ShopList/{authorId}", method = RequestMethod.GET)
    public ModelAndView getBooksByAuthor(@PathVariable("authorId") Long authorId) {
        Author author = authorService.findById(authorId);
        List<Book> book = bookService.findByAuthor(author);
        List<Author> authors = authorService.findAll();
        List<Category> categoryList = categoryService.findAll();
        ModelAndView modelAndView = new ModelAndView("user/ShopListFindByAuthor");
        modelAndView.addObject("book", book);
        modelAndView.addObject("List_author", authors);
        modelAndView.addObject("List_category", categoryList);
        return modelAndView;
    }

    @RequestMapping(value = "/user/ShopListByCategory/{categoryId}", method = RequestMethod.GET)
    public ModelAndView getBooksByCategory(@PathVariable("categoryId") Long categoryId) {
        Category category = categoryService.findById(categoryId);
        List<Book> book = bookService.findByCategory(category);
        List<Author> authors = authorService.findAll();
        List<Category> categoryList = categoryService.findAll();
        ModelAndView modelAndView = new ModelAndView("user/ShopListFindByAuthor");
        modelAndView.addObject("book", book);
        modelAndView.addObject("List_author", authors);
        modelAndView.addObject("List_category", categoryList);
        return modelAndView;
    }

    @GetMapping("/user/blog")
    public ModelAndView blogPage() {
        List<Blog> blog = blogService.getAllBlogs();
        ModelAndView mav = new ModelAndView("user/blog");
        mav.addObject("blog", blog);
        return mav;
    }

    @GetMapping("/user/search")
    public ModelAndView searchBook(@RequestParam("keyword") String keyword) {
        List<Book> book = bookService.searchBook(keyword);
        for (Book books : book) {
            Picture pictures = pictureService.findByBookID(books.getId());
            books.setPicture(pictures);
            Book_Details bookDetails = bookDetailsService.findByBookID(books.getId());
            books.setBookDetails(bookDetails);
        }
        ModelAndView mav = new ModelAndView("user/ShopListSearchResult");
        mav.addObject("book", book);
        mav.addObject("keyword", keyword);
        return mav;
    }
//    ====MAIN CONTENT ====

    @GetMapping("/user/products")
    @ResponseBody
    //Test json get all book
    private List<Book> getProducts() {
        return bookService.findAll();
    }

    @GetMapping("/user/products/{field}")
    @ResponseBody
    private List<Book> getProductsWithSort(@PathVariable String field) {
        return bookService.findBooksWithSorting(field);
    }

    @GetMapping("/user/pagination/{offset}/{pageSize}")
    @ResponseBody
    private Page<Book> getBooksWithPaging(@PathVariable int offset, @PathVariable int pageSize) {
        Page<Book> bookWithPagination = bookService.findBooksWithPagination(offset, pageSize);
        return bookWithPagination;
    }

    @RequestMapping(value = "/user/ShopListPaging", method = RequestMethod.GET)
    public ModelAndView ShopListPaginate(@RequestParam("p") Optional<Integer> p) {
        Pageable pageable = PageRequest.of(p.orElse(0), 10);
        Page<Book> page = bookService.findAll(pageable);
        Long countBook = bookService.coundAllBook();
        List<Author> author = authorService.findAll();
        ModelAndView mav = new ModelAndView("user/ShopListPaging");
        mav.addObject("List_book_paging", page);
        mav.addObject("countBook", countBook);
        mav.addObject("List_author", author);
        return mav;
    }

    @GetMapping("/user/single-product/{id}")
    public ModelAndView showProductDetails(@PathVariable("id") Long id) {
        // Truy vấn thông tin chi tiết sản phẩm theo mã ID
        Book book = bookService.findById(id);
        Picture pictures = pictureService.findByBookID(book.getId());
        book.setPicture(pictures);
        Book_Details bookDetails = bookDetailsService.findByBookID(book.getId());
        book.setBookDetails(bookDetails);
        // Tạo đối tượng ModelAndView và thiết lập tên view và model
        ModelAndView mav = new ModelAndView("user/single-product");
        mav.addObject("book", book);
        mav.addObject("bookDetails", bookDetails);
        return mav;
    }

    @GetMapping("/user/cart")
    public String cart(Model model, Principal principal, HttpSession session) {
        if (principal == null) {
            return "redirect:/login";
        }
        String username = principal.getName();
        Account account = accountService.findByUsername(username);
        Cart cart = account.getCart();
        if (cart == null) {
            model.addAttribute("check", "No item in your cart");
        }
        session.setAttribute("totalItems", cart.getTotalItems());
        model.addAttribute("subTotal", cart.getTotalPrices());
        model.addAttribute("cart", cart);
        return "/user/cart";
    }

    @PostMapping("/user/add-to-cart")
    public String addItemToCart(
            @RequestParam("id") Long bookID,
            @RequestParam(value = "quantity", required = false, defaultValue = "1") int quantity,
            Principal principal,
            HttpServletRequest request) {
        if (principal == null) {
            return "redirect:/login";
        }
        Book book = bookService.findById(bookID);
        String username = principal.getName();
        Account account = accountService.findByUsername(username);
        Cart cart = cartService.addItemToCart(book, quantity, account);
        return "redirect:" + request.getHeader("Referer");
    }

    @RequestMapping(value = "/user/update-cart", method = RequestMethod.POST, params = "action=delete")
    public String deleteItemFromCart(@RequestParam("id") Long bookId,
                                     Model model,
                                     Principal principal) {
        if (principal == null) {
            return "redirect:/login";
        } else {
            String username = principal.getName();
            Account account = accountService.findByUsername(username);
            Book book = bookService.findById(bookId);
            Cart cart = cartService.deleteItemFromCart(book, account);
            model.addAttribute("cart", cart);
            return "redirect:/user/cart";
        }
    }

    @RequestMapping(value = "/user/update-cart", method = RequestMethod.POST, params = "action=update")
    public String updateItemfromCart(@RequestParam("quantity") int quantity, @RequestParam("id") Long bookId,
                                     Model model,
                                     Principal principal) {
        if (principal == null) {
            return "redirect:/login";
        } else {
            String username = principal.getName();
            Account account = accountService.findByUsername(username);
            Book book = bookService.findById(bookId);
            Cart cart = cartService.updateItemInCart(book, quantity, account);
            model.addAttribute("cart", cart);
            return "redirect:/user/cart";
        }
    }

    @GetMapping("/user/checkout")
    public ModelAndView viewCheckout(Principal principal) {
        ModelAndView mav = new ModelAndView("user/checkout");
        if (principal == null) {
            mav = new ModelAndView("login");
        }
        String username = principal.getName();
        Account account = accountService.findByUsername(username);
        Cart cart = account.getCart();
        mav.addObject("subTotal", cart.getTotalPrices());
        mav.addObject("cart", cart);
        mav.addObject("account", account);
        return mav;
    }

    @GetMapping("/user/save-order")
    public String saveOrder(Principal principal) {
        if (principal == null) {
            return "redirect:/login";
        }
        String username = principal.getName();
        Account account = accountService.findByUsername(username);
        Cart cart = account.getCart();
        orderService.saveOrder(cart,Long.valueOf(1));
        return "redirect:/user/order";
    }

    @GetMapping("/user/order")
    public ModelAndView viewMyOrders(Principal principal) {
        ModelAndView mav = new ModelAndView("user/detailOrder");
        if (principal == null) {
            mav = new ModelAndView("login");
        }
        String username = principal.getName();
        Account account = accountService.findByUsername(username);
        List<Order> orderList = account.getOrders();
        mav.addObject("orders", orderList);
        mav.addObject("account", account);
        return mav;
    }

    //    ====FOOTER====
    @RequestMapping(value = "/user/aboutUs", method = RequestMethod.GET)
    public ModelAndView aboutUsPage() {
        ModelAndView mav = new ModelAndView("user/aboutUs");
        return mav;
    }

    @RequestMapping(value = "/user/contactUs", method = RequestMethod.GET)
    public ModelAndView contactUsPage() {
        ModelAndView mav = new ModelAndView("user/contactUs");
        return mav;
    }

    @RequestMapping(value = "/user/termOfUse", method = RequestMethod.GET)
    public ModelAndView termOfUsePage() {
        ModelAndView mav = new ModelAndView("user/termOfUse");
        return mav;
    }

    @RequestMapping(value = "/user/helpCenter", method = RequestMethod.GET)
    public ModelAndView helpCenterPage() {
        ModelAndView mav = new ModelAndView("user/helpCenter");
        return mav;
    }

    public String getFormattedPrice(double price) {
        DecimalFormatSymbols symbols = new DecimalFormatSymbols();
        symbols.setCurrency(Currency.getInstance("VND"));
        DecimalFormat decimalFormat = new DecimalFormat("#,###.### ", symbols);
        return decimalFormat.format(price);
    }

    @RequestMapping(value = "/user/api/payment", method = RequestMethod.GET)
    public String createUrlVNPAY(@RequestParam(name = "idOrder") Long id, @RequestParam(name = "totalPrice") double totalPrice) throws UnsupportedEncodingException {

        String vnp_Version = "2.1.0";
        String vnp_Command = "pay";
        String vnp_OrderInfo = req.getParameter("vnp_OrderInfo");
//        String orderType = req.getParameter("ordertype");
        String strNumber = String.valueOf(id);
        String vnp_TxnRef = strNumber;
        String vnp_TmnCode = Config.vnp_TmnCode;

        double amountParam = totalPrice * 100;
        long amount = Double.valueOf(amountParam).longValue();
        Map<String, String> vnp_Params = new HashMap<>();
        vnp_Params.put("vnp_Version", vnp_Version);
        vnp_Params.put("vnp_Command", vnp_Command);
        vnp_Params.put("vnp_TmnCode", vnp_TmnCode);
        vnp_Params.put("vnp_Amount", String.valueOf(amount));
        vnp_Params.put("vnp_CurrCode", "VND");
//        String bank_code = req.getParameter("bankcode");
        vnp_Params.put("vnp_BankCode", "NCB");
        vnp_Params.put("vnp_TxnRef", vnp_TxnRef);
        vnp_Params.put("vnp_OrderInfo", "Thanh toan don hang");
//        vnp_Params.put("vnp_OrderType", orderType);
        String locate = req.getParameter("language");
        if (locate != null && !locate.isEmpty()) {
            vnp_Params.put("vnp_Locale", locate);
        } else {
            vnp_Params.put("vnp_Locale", "vn");
        }
        vnp_Params.put("vnp_ReturnUrl", Config.vnp_Returnurl);
        Calendar cld = Calendar.getInstance(TimeZone.getTimeZone("Etc/GMT+7"));

        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String vnp_CreateDate = formatter.format(cld.getTime());
        vnp_Params.put("vnp_CreateDate", vnp_CreateDate);
        cld.add(Calendar.MINUTE, 15);
        String vnp_ExpireDate = formatter.format(cld.getTime());
        //Add Params of 2.1.0 Version
        vnp_Params.put("vnp_ExpireDate", vnp_ExpireDate);

        //Build data to hash and querystring
        List fieldNames = new ArrayList(vnp_Params.keySet());
        Collections.sort(fieldNames);
        StringBuilder hashData = new StringBuilder();
        StringBuilder query = new StringBuilder();
        Iterator itr = fieldNames.iterator();
        while (itr.hasNext()) {
            String fieldName = (String) itr.next();
            String fieldValue = (String) vnp_Params.get(fieldName);
            if ((fieldValue != null) && (fieldValue.length() > 0)) {
                //Build hash data
                hashData.append(fieldName);
                hashData.append('=');
                hashData.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                //Build query
                query.append(URLEncoder.encode(fieldName, StandardCharsets.US_ASCII.toString()));
                query.append('=');
                query.append(URLEncoder.encode(fieldValue, StandardCharsets.US_ASCII.toString()));
                if (itr.hasNext()) {
                    query.append('&');
                    hashData.append('&');
                }
            }
        }
        String queryUrl = query.toString();
        String vnp_SecureHash = Config.hmacSHA512(Config.vnp_HashSecret, hashData.toString());
        queryUrl += "&vnp_SecureHash=" + vnp_SecureHash;
        String paymentUrl = Config.vnp_PayUrl + "?" + queryUrl;
        PaymentDTO paymentDTO = new PaymentDTO();
        paymentDTO.setStatus("OK");
        paymentDTO.setMessage("Successfully");
        paymentDTO.setUrl(paymentUrl);
        return "redirect:" + paymentUrl;
    }

    @RequestMapping(value = "/user/paymentSuccessfully", method = RequestMethod.GET)
    public String handlePaymentSuccess(@RequestParam("vnp_Amount") String amount,
                                       @RequestParam("vnp_BankCode") String bankCode,
                                       @RequestParam("vnp_BankTranNo") String bankTransactionNo,
                                       @RequestParam("vnp_CardType") String cardType,
                                       @RequestParam("vnp_OrderInfo") String orderInfo,
                                       @RequestParam("vnp_PayDate") String paymentDate,
                                       @RequestParam("vnp_ResponseCode") String responseCode,
                                       @RequestParam("vnp_TmnCode") String tmnCode,
                                       @RequestParam("vnp_TransactionNo") String transactionNo,
                                       @RequestParam("vnp_TransactionStatus") String transactionStatus,
                                       @RequestParam("vnp_TxnRef") String txnRef,
                                       @RequestParam("vnp_SecureHash") String secureHash, Model model, Principal principal) {
        String username = principal.getName();
        Account account = accountService.findByUsername(username);
        Cart cart = account.getCart();
        orderService.saveOrder(cart,Long.valueOf(2));
        model.addAttribute("txnRef",txnRef);
        return "/user/paymentSuccessfully";
    }
}