pragma solidity ^0.6.8;
  
contract Donation{
    int runid;
   int DonationAmount;
   struct Donor{
       
       int id;
       string name;
       string number;
       int amount;
   }
   
   Donor []dns;
  constructor() public
    {
        DonationAmount = 0;
        runid = 0;
    }

   function addDonor(
     string memory name, 
     string memory number, 
     int amount
   ) public{
       Donor memory e
         =Donor(runid,
                   name,
                   number,
                   amount);
       dns.push(e);
       runid = runid + 1;
       DonationAmount = DonationAmount + amount;
   }
  
   function getDonor(
     int id
   ) public view returns(
     string memory, 
     string memory, 
     int){
       uint i;
       for(i=0;i<dns.length;i++)
       {
           Donor memory e
             = dns[i];
           
           
           if(e.id==id)
           {
                  return(e.name,
                      e.number,
                      e.amount);
           }
       }
      
     return("Not Found",
            "Not Found",
            0);
   }
   function getTotalCollection() view public returns(int)
    {
        return DonationAmount; 
    }
    
    function totalno() view public returns(uint256)
    {
        return dns.length; 
    }
    
}