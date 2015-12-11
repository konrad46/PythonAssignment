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
public enum AccountType {
    SAVING("saving"),
    CHECKING("checking");


    AccountType(String action){
        this.action = action;
    }
    private String action;

    public String getAction(){
        return this.action;
    }
    
    public static AccountType fromValue(String action){
        AccountType type = null;
        if(action != null){
            for(AccountType at : AccountType.values()){
                if(at.action.equals(action)){
                    type = at;
                    break;
                }
            }
        }
        return type;
    }
}
    

