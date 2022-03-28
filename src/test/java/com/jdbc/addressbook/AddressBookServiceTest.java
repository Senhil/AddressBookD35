package com.jdbc.addressbook;

import org.junit.jupiter.api.Test;


import java.util.List;

import static com.jdbc.addressbook.AddressBookService.IOService.DB_IO;
import static org.junit.jupiter.api.Assertions.*;

class AddressBookServiceTest {
    @Test
    public void givenAddressBookInDB_WhenRetrieved_ShouldMatchThePeopleCount() {
        AddressBookService addressBookService = new AddressBookService();
        List<com.addressbook.jdbc.AddressBookData> addressBookDataList = addressBookService.readAddressBookData(DB_IO);
        assertEquals(3, addressBookDataList.size());
    }

    @Test
    public void givenNewPhoneNumber_ShouldUpdateTheRecordAndSyncWithDataBase() throws AddressBookException {
        AddressBookService addressBookService = new AddressBookService();
        addressBookService.readAddressBookData(DB_IO);
        addressBookService.updateRecord("Senthil", "8098757073");
        boolean result = addressBookService.checkRecordSyncWithDB("Senthil");
        assertTrue(result);
    }
}