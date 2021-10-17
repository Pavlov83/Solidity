pragma solidity ^0.8.9;

contract SimpleStorage{
    
   uint256 public favoriteNumber;
   
   //defines new object type in solidity
   struct People {
       uint256 myNumber;
       string name;
   }
   
   People public person = People({
        myNumber : 12,
        name : "Pav"
   });
   
   //dynamic array(able to change size),
   //if we add in the brackets the size it becomes fixed siZe
   People[] public people;
   
   function addPerson(string memory _name,uint256 _favoriteNumber)public{
       people.push(People(_favoriteNumber,_name));
   }
   
   function addNumber(uint256 _favNum)public{
       favoriteNumber =  _favNum;
   }
   
   //view means that we read from the blockchain(does not change the state of the chain)
   function retrieve()public view returns(uint256){
       return favoriteNumber;
   }
   //pure makes math calculation with the function(does not change the state of the chain)
//   function sum()public pure returns(uint256){
//       return favoriteNumber + favoriteNumber;
//   }
}