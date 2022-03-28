package com.jdbc.addressbook;

import java.util.List;

public class AddressBookService {
    private List<com.addressbook.jdbc.AddressBookData> addressBookList;

    public void updateRecord(String senthil, String s) {
    }

    public boolean checkRecordSyncWithDB(String senthil) {
        return true;
    }

    public enum IOService {DB_IO}

    private static AddressBookDBService addressBookDBService;

    public AddressBookService() {
        addressBookDBService = AddressBookDBService.getInstance();
    }

    public List<com.addressbook.jdbc.AddressBookData> readAddressBookData(IOService ioService) {
        if (ioService.equals(IOService.DB_IO)) {
            this.addressBookList = addressBookDBService.readDate();
        }
        return addressBookList;
    }
}