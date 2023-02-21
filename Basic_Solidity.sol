//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract simplestorage{
    uint256 fnumber;
    // 结构体
    struct People{
        uint256 fnumber;
        string name;
    }
    // 创建数组
    People[] public people;
    // 映射
    mapping(string=>uint256) public nameTofnumber;
    // 修改值
    function store(uint256 _fnumber) public {
        fnumber = _fnumber;
    }
    // view返回值,不消耗gas
    function retrieve() public view returns(uint256){
        return fnumber;
    }
    // 为数组增加元素
    function addPerson(string memory _name, uint256 _fnumber) public{
        people.push(People(_fnumber,_name));
        nameTofnumber[_name] = _fnumber;
    }
}
