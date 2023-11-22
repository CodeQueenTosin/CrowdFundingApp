//SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage {

    uint256 public myfavnumber;

    uint256 [] listOffavnumbers;// [0,8,8,0]

    //struct are used to create your own type
    struct Person {

        uint256 favNumber;
        string name;
    }

    // Person public myFriend = Person(6, "Patrick");
    // Person public myFriend2 = Person(6, "Susan");
    // Person public myFriend3 = Person(6, "Susan");


    //We cant do this so we create an array of persons 
    //dynamic array in solidity means we dont know the size 
    Person [] public listOfPeople;

    mapping(string => uint256) public nameToFavNumber;


    function store(uint256 _favnumber) public {
        myfavnumber = _favnumber;
  
    }
    //view and pure// keywords used to read state, you dont need to send a transaction
    //differentiate between View and Pure function inSolidity 
    //You dont need to spend gas, because we are not modifying the state
    //View and Pure function requires gas only when a transaction methods calls it
    function retrieve () public view returns(uint256){
         return myfavnumber;
      //return specifies what will be returned when called
    }
   
    //Array Push allows us to add to our array 
   function addPerson (string memory _name, uint256 _favnumber) public {
          listOfPeople.push(Person(_favnumber, _name));
          nameToFavNumber[_name] = _favnumber;
       


   }

  










}