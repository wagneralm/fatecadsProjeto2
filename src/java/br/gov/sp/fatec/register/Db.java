/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.fatec.register;

import java.util.ArrayList;

/**
 *
 * @author wagne
 */
public class Db {

    private static ArrayList<Client> client;
    private static ArrayList<Provider> provider;

    public static ArrayList<Client> getClients() {
        if (client == null) {
            client = new ArrayList<>();
            Client first = new Client();
            first.setClientAttributes("Teste Cliente", "132456", "789456", "email@gmail.com", "123456789", "rua Qualquer,nº132 Alguma cidade - Estado");
            client.add(first);
        }
        return client;
    }

    public static ArrayList<Provider> getProviders() {
        if (provider == null) {
            provider = new ArrayList<>();
            Provider first = new Provider();
            first.setProviderAttributes("Teste Fornecedor", "R.C.F", "1234563", "email@email.com", "13465846", "rua Qualquer,nº132 Alguma cidade - Estado");
            provider.add(first);
        }
        return provider;
    }

}
