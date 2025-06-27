package com.example;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

public class StringUtilsTest {

    private StringUtils stringUtils;

    @Before
    public void setUp() {
        stringUtils = new StringUtils();
        System.out.println("Setup completed.");
    }

    @After
    public void tearDown() {
        stringUtils = null;
        System.out.println("Teardown completed.");
    }

    @Test
    public void testIsPalindrome_withPalindrome() {
        // Arrange is done in setUp
        // Act
        boolean result = stringUtils.isPalindrome("madam");
        // Assert
        assertTrue(result);
    }

    @Test
    public void testIsPalindrome_withNonPalindrome() {
        boolean result = stringUtils.isPalindrome("hello");
        assertFalse(result);
    }

    @Test
    public void testReverse() {
        String result = stringUtils.reverse("abc");
        assertEquals("cba", result);
    }
}
