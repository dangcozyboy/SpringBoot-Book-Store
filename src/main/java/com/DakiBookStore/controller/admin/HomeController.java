package com.DakiBookStore.controller.admin;

import com.DakiBookStore.dto.AccountDTO;
import com.DakiBookStore.dto.BookDTO;
import com.DakiBookStore.dto.BookDetailDTO;
import com.DakiBookStore.model.*;
import com.DakiBookStore.repository.PictureRepository;
import com.DakiBookStore.service.*;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.security.Principal;
import java.util.List;
import java.util.Optional;

import static com.DakiBookStore.model.Book.formatMoney;

@Controller(value = "HomeOfAdmin")
public class HomeController {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private AccountService accountService;
    @Autowired
    private BookService bookService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private BookDetailsService bookDetailsService;
    @Autowired
    private AuthorService authorService;
    @Autowired
    private PictureRepository pictureRepository;

    @RequestMapping(value = "/admin/home", method = RequestMethod.GET)
    public ModelAndView adminDashboard() {
        long count = accountService.countAccount();
        long countorder = orderService.countOrder();
        long countbook = bookService.countOrder();
        double totalProfit = orderService.totalProfit();
        String format = formatMoney(totalProfit);
        ModelAndView mav = new ModelAndView("admin/home");
        mav.addObject("totalUser", count);
        mav.addObject("totalOrder", countorder);
        mav.addObject("totalBook", countbook);
        mav.addObject("totalProfit", totalProfit);
        mav.addObject("format", format);
        return mav;
    }

    @RequestMapping(value = "/admin/add-category", method = RequestMethod.GET)
    public ModelAndView showCategoryForm() {
        ModelAndView mav = new ModelAndView("admin/add-category");
        return mav;
    }

    @RequestMapping(value = "/admin/add-category", method = RequestMethod.POST)
    public ModelAndView addCategory(@ModelAttribute("category") Category category) {
        categoryService.addCategory(category);
        ModelAndView mav = new ModelAndView("admin/add-category");
        System.out.println(category.getCategory());
        return mav;
    }

    @RequestMapping(value = "/admin/viewCategory", method = RequestMethod.GET)
    public ModelAndView viewCategory(@RequestParam("p") Optional<Integer> p) {
        Pageable pageable = PageRequest.of(p.orElse(0), 5);
        Page<Category> page = categoryService.findAll(pageable);
        ModelAndView mav = new ModelAndView("admin/viewCategory");
        mav.addObject("List_category_paging", page);
        return mav;
    }

    @RequestMapping(value = "/admin/add-book", method = RequestMethod.GET)
    public ModelAndView viewaddBook() {
        List<Category> categoryList = categoryService.findAll();
        List<Author> authorList = authorService.findAll();
        List<Picture> pictureList = pictureRepository.findAll();
        ModelAndView mav = new ModelAndView("admin/add-Book");
        mav.addObject("category", categoryList);
        mav.addObject("author", authorList);
        mav.addObject("picture", pictureList);
        mav.addObject("book", new BookDTO());
        return mav;
    }

//    @PostMapping(path = "/admin/save-bookTest", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
//    public Book addNewBook(@RequestParam(value = "file") MultipartFile imageBook,String jsonFileVo){
//        BookDTO bookDTO = null;
//        try {
//            bookDTO = new ObjectMapper().readValue(jsonFileVo, BookDTO.class);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return bookService.addBook(imageBook,bookDTO);
//    }
    @PostMapping(path = "/admin/save-book", consumes = {MediaType.MULTIPART_FORM_DATA_VALUE})
    public String saveProduct(@ModelAttribute("book") BookDTO bookDTO,
                              @RequestParam(value = "imageBook") MultipartFile imageBook,
                              @ModelAttribute("bookDetail") BookDetailDTO bookDetailDTO,
                              RedirectAttributes attributes) {
        try {
            bookService.addBook(imageBook, bookDTO,bookDetailDTO);
            attributes.addFlashAttribute("success", "Add successfully!");
        } catch (Exception e) {
            e.printStackTrace();
            attributes.addFlashAttribute("error", "Failed to add!");
        }
        return "redirect:/admin/add-book";
    }
    @GetMapping("/admin/list-book")
    public ModelAndView viewListBook(@RequestParam("p") Optional<Integer> p){
        ModelAndView mav = new ModelAndView("admin/list-Book");
        Pageable pageable = PageRequest.of(p.orElse(0), 8);
        Page<Book> bookList = bookService.findAll(pageable);
        for (Book books : bookList) {
            Book_Details bookDetails = bookDetailsService.findByBookID(books.getId());
            books.setBookDetails(bookDetails);
        }
        mav.addObject("bookList",bookList);
        return mav;
    }
    @GetMapping("/admin/list-user")
    public ModelAndView viewListUser(@RequestParam("p") Optional<Integer> p){
        ModelAndView mav = new ModelAndView("admin/list-User");
        Pageable pageable = PageRequest.of(p.orElse(0), 8);
        Page<Account> userList = accountService.findAll(pageable);
        mav.addObject("listAccount",userList);
        return mav;
    }
    @GetMapping("/admin/list-author")
    public ModelAndView viewListAuthor(@RequestParam("p") Optional<Integer> p){
        ModelAndView mav = new ModelAndView("admin/list-author");
        Pageable pageable = PageRequest.of(p.orElse(0), 8);
        Page<Author> authorList = authorService.findAll(pageable);
        mav.addObject("authorList",authorList);
        return mav;
    }
    @GetMapping("/admin/view-TotalRevenue")
    public ModelAndView viewTotalRevenue(@RequestParam("p") Optional<Integer> p){
        ModelAndView mav = new ModelAndView("admin/viewTotalRevenue");
        Pageable pageable = PageRequest.of(p.orElse(0), 15);
        Page<Order> orderList = orderService.findAll(pageable);
        double totalProfit = orderService.totalProfit();
        String totalProfitformat = formatMoney(totalProfit);
        long countorder = orderService.countOrder();
        mav.addObject("orderList",orderList);
        mav.addObject("totalOrder",countorder);
        mav.addObject("totalProfit",totalProfitformat);
        return mav;
    }
    @GetMapping("/admin/list-order")
    public ModelAndView viewListOrder(@RequestParam("p") Optional<Integer> p){
        ModelAndView mav = new ModelAndView("admin/list-Order");
        Pageable pageable = PageRequest.of(p.orElse(0), 8);
        Page<Order> orderList = orderService.findAll(pageable);
        long totalOrder = orderService.countOrder();
        long countPendingOrders = orderService.countPendingOrders();
        long countShippingOrders = orderService.countShippingOrders();
        long countDeliveredOrders = orderService.countDeliveredOrders();
        mav.addObject("orderList",orderList);
        mav.addObject("totalOrder",totalOrder);
        mav.addObject("countPendingOrders",countPendingOrders);
        mav.addObject("countShippingOrders",countShippingOrders);
        mav.addObject("countDeliveredOrders",countDeliveredOrders);
        return mav;
    }
    @GetMapping("/admin/list-pendingOrder")
    public ModelAndView viewListpendingOrder(){
        ModelAndView mav = new ModelAndView("admin/list-pendingOrder");
//        Pageable pageable = PageRequest.of(p.orElse(0), 5);
//        Page<Order> orderList = orderService.findAll(pageable);
        List<Order> orderList= orderService.findByStatus("Pending");
        long totalOrder = orderService.countOrder();
        long countPendingOrders = orderService.countPendingOrders();
        long countShippingOrders = orderService.countShippingOrders();
        long countDeliveredOrders = orderService.countDeliveredOrders();
        mav.addObject("orderList",orderList);
        mav.addObject("totalOrder",totalOrder);
        mav.addObject("countPendingOrders",countPendingOrders);
        mav.addObject("countShippingOrders",countShippingOrders);
        mav.addObject("countDeliveredOrders",countDeliveredOrders);
        return mav;
    }
    @GetMapping("/admin/list-shippingOrder")
    public ModelAndView viewListshippingOrder(){
        ModelAndView mav = new ModelAndView("admin/list-shippingOrder");
//        Pageable pageable = PageRequest.of(p.orElse(0), 5);
//        Page<Order> orderList = orderService.findAll(pageable);
        List<Order> orderList= orderService.findByStatus("Shipping");
        long totalOrder = orderService.countOrder();
        long countPendingOrders = orderService.countPendingOrders();
        long countShippingOrders = orderService.countShippingOrders();
        long countDeliveredOrders = orderService.countDeliveredOrders();
        mav.addObject("orderList",orderList);
        mav.addObject("totalOrder",totalOrder);
        mav.addObject("countPendingOrders",countPendingOrders);
        mav.addObject("countShippingOrders",countShippingOrders);
        mav.addObject("countDeliveredOrders",countDeliveredOrders);
        return mav;
    }
    @GetMapping("/admin/list-deliveredOrder")
    public ModelAndView viewListdeliveredOrder(){
        ModelAndView mav = new ModelAndView("admin/list-deliveredOrder");
//        Pageable pageable = PageRequest.of(p.orElse(0), 5);
//        Page<Order> orderList = orderService.findAll(pageable);
        List<Order> orderList= orderService.findByStatus("Delivered");
        long totalOrder = orderService.countOrder();
        long countPendingOrders = orderService.countPendingOrders();
        long countShippingOrders = orderService.countShippingOrders();
        long countDeliveredOrders = orderService.countDeliveredOrders();
        mav.addObject("orderList",orderList);
        mav.addObject("totalOrder",totalOrder);
        mav.addObject("countPendingOrders",countPendingOrders);
        mav.addObject("countShippingOrders",countShippingOrders);
        mav.addObject("countDeliveredOrders",countDeliveredOrders);
        return mav;
    }
    @PostMapping("/admin/accept-order/{id}")
    public String acceptOrder(@PathVariable("id") Long id){
        orderService.acceptOrder(id);
        return "redirect:/admin/list-order";
    }
    @PostMapping("/admin/delivery-order/{id}")
    public String deliveryOrder(@PathVariable("id") Long id){
        orderService.deliveryOrder(id);
        return "redirect:/admin/list-order";
    }
    @GetMapping("/admin/update-book/{id}")
    public String updateBook(@PathVariable("id") Long id, Model model, Principal principal){
        if(principal == null){
            return "redirect:/login";
        }
        model.addAttribute("title", "Update products");
        List<Category> categoryList = categoryService.findAll();
        List<Author> authorList = authorService.findAll();
        Picture picture = pictureRepository.findByBookId(id);
        BookDTO bookDTO = bookService.getById(id);
        Book_Details bookDetails = bookDetailsService.findByBookID(id);
        model.addAttribute("category", categoryList);
        model.addAttribute("author", authorList);
        model.addAttribute("bookDTO", bookDTO);
        model.addAttribute("picture",picture);
        model.addAttribute("bookDetails",bookDetails);
        return "/admin/update-book";
    }


    @PostMapping("/admin/update-book/{id}")
    public String processUpdate(@PathVariable("id") Long id,
                                @ModelAttribute("bookDTO") BookDTO bookDTO,
                                @ModelAttribute("bookDetailDTO") BookDetailDTO bookDetailDTO,
                                @RequestParam("imageBook")MultipartFile imageBook,
                                RedirectAttributes attributes
    ){
        try {
            bookService.update(imageBook, bookDTO,bookDetailDTO);
            attributes.addFlashAttribute("success", "Update successfully!");
        }catch (Exception e){
            e.printStackTrace();
            attributes.addFlashAttribute("error", "Failed to update!");
        }
        return "redirect:/admin/list-book";

    }

}
