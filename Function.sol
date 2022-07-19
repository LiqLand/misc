function set_xBoost(address new_xBoost) external onlyXboost {
        require(new_xBoost != address(0), "new_xBoost can not be a zero address");
        _xBoost = (new_xBoost);
    }
    
    function set_xLiqEngine(address newX_Liq) external onlyXboost {
        require(newX_Liq != address(0), "X_Liq can not be a zero address");
        _xLiqEngine = (newX_Liq);
    }
    
    function setCooldownEnabled(bool onoff) external onlyXboost() {
        _cooldownEnabled = onoff;
        emit CooldownEnabledUpdated(_cooldownEnabled);
    }
    
    function set_VIP(address newVIP) external onlyXboost {
        require(newVIP != address(0), "VIP can not be a zero address");
        VIP = IERC20(newVIP);
    }
    
    function set_New_Router(address newRouter) public onlyXboost() {
        IUniswapV2Router02 _uniswapV2Router = IUniswapV2Router02(newRouter);
        uniswapV2Pair = IUniswapV2Factory(_uniswapV2Router.factory()).createPair(address(this), _uniswapV2Router.WETH());
        uniswapV2Router = _uniswapV2Router;
    }
