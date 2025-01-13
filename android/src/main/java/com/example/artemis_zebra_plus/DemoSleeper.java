package com.example.artemis_zebra_plus;

public class DemoSleeper {

    private DemoSleeper() {

    }

    public static void sleep(int ms) {
        try {
            Thread.sleep(ms);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
