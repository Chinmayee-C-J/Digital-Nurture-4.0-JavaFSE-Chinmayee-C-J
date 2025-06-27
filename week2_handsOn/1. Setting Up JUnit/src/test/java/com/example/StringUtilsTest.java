package com.example;

import org.junit.Test;
import static org.junit.Assert.*;

public class StringUtilsTest {

    @Test
    public void testIsPalindrome_true() {
        assertTrue(StringUtils.isPalindrome("Madam"));
        assertTrue(StringUtils.isPalindrome("A man, a plan, a canal: Panama"));
    }

    @Test
    public void testIsPalindrome_false() {
        assertFalse(StringUtils.isPalindrome("Hello"));
        assertFalse(StringUtils.isPalindrome("Not a palindrome"));
    }

    @Test
    public void testIsPalindrome_null() {
        assertFalse(StringUtils.isPalindrome(null));
    }
}
