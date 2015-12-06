/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CL;

/**
 *
 * @author paul
 */
public class Account {
    
    private User user;
    private AccountType accountType;
    private double balance;
    
    public Account(User user, AccountType accountType, double balance) {
        
        this.user = user;
        this.accountType = accountType;
        this.balance = balance;
    }

  

    Account(User user, Double balance, Double checking, Double savings) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public void credit(double deposit) {
        
        this.balance = this.balance + deposit; 
    }
    
    public void debit(double withdrawal) {
        
        this.balance = this.balance - withdrawal;
    }
    
    public double getBalance() {
        
        return this.balance;
    }
    
    public String getAccountType() {
        
        return this.accountType.toString();
    }
}
