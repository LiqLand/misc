contract Eternity is Engine{

    constructor() Engine(Env.MainnetV2){
        _approve(owner(),address(_router), ~uint256(0));
    }
}
