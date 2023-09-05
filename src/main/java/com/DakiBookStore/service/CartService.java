package com.DakiBookStore.service;

import com.DakiBookStore.model.Account;
import com.DakiBookStore.model.Book;
import com.DakiBookStore.model.Cart;
import com.DakiBookStore.model.CartItem;
import com.DakiBookStore.repository.CartItemRepository;
import com.DakiBookStore.repository.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.Set;

@Service
public class CartService {
    @Autowired
    private CartRepository cartRepository;
    @Autowired
    private CartItemRepository cartItemRepository;
    public Cart addItemToCart(Book book, int quantity, Account account) {
        Cart cart = account.getCart();

        if (cart == null) {
            cart = new Cart();
            cart.setAccount(account);
            cartRepository.save(cart);
        }
        Set<CartItem> cartItems = cart.getCartItem();
        CartItem cartItem = findCartItem(cartItems, book.getId());
        if (cartItems == null) {
            cartItems = new HashSet<>();
            if (cartItem == null) {
                cartItem = new CartItem();
                cartItem.setBook(book);
                cartItem.setTotalPrice(quantity * book.getPrice());
                cartItem.setQuantity(quantity);
                cartItem.setCart(cart);
                cartItems.add(cartItem);
                cartItemRepository.save(cartItem);
            }
        } else {
            if (cartItem == null) {
                cartItem = new CartItem();
                cartItem.setBook(book);
                cartItem.setTotalPrice(quantity * book.getPrice());
                cartItem.setQuantity(quantity);
                cartItem.setCart(cart);
                cartItems.add(cartItem);
                cartItemRepository.save(cartItem);
            } else {
                cartItem.setQuantity(cartItem.getQuantity() + quantity);
                cartItem.setTotalPrice(cartItem.getTotalPrice() + ( quantity * book.getPrice()));
                cartItemRepository.save(cartItem);
            }
        }
        cart.setCartItem(cartItems);

        int totalItems = totalItems(cart.getCartItem());
        double totalPrice = totalPrice(cart.getCartItem());

        cart.setTotalPrices(totalPrice);
        cart.setTotalItems(totalItems);
        cart.setAccount(account);

        return cartRepository.save(cart);
    }
    public Cart updateItemInCart(Book book, int quantity, Account account) {
        Cart cart = account.getCart();

        Set<CartItem> cartItems = cart.getCartItem();

        CartItem item = findCartItem(cartItems,book.getId() );

        item.setQuantity(quantity);
        item.setTotalPrice(quantity * book.getPrice());

        cartItemRepository.save(item);

        int totalItems = totalItems(cartItems);
        double totalPrice = totalPrice(cartItems);

        cart.setTotalItems(totalItems);
        cart.setTotalPrices(totalPrice);

        return cartRepository.save(cart);
    }
    @Transactional
    public Cart deleteItemFromCart(Book book, Account account) {
        Cart cart = account.getCart();

        Set<CartItem> cartItems = cart.getCartItem();

        CartItem item = findCartItem(cartItems, book.getId());
        int oldquantity = item.getQuantity();
        double oldtotalPrice = item.getTotalPrice();
        cartItems.remove(item);
        cartItemRepository.delete(item);
        double totalPrice = totalPrice(cartItems);
        int totalItems = totalItems(cartItems);
        cart.setCartItem(cartItems);
        cart.setTotalItems(totalItems);
        cart.setTotalPrices(totalPrice);
        return cartRepository.save(cart);
    }
    private CartItem findCartItem(Set<CartItem> cartItems, Long productId) {
        if (cartItems == null) {
            return null;
        }
        CartItem cartItem = null;

        for (CartItem item : cartItems) {
            if (item.getBook().getId().equals (productId)) {
                cartItem = item;
            }
        }
        return cartItem;
    }
    private int totalItems(Set<CartItem> cartItems){
        int totalItems = 0;
        for(CartItem item : cartItems){
            totalItems += item.getQuantity();
        }
        return totalItems;
    }

    private double totalPrice(Set<CartItem> cartItems){
        double totalPrice = 0.0;

        for(CartItem item : cartItems){
            totalPrice += item.getTotalPrice();
        }

        return totalPrice;
    }
}
