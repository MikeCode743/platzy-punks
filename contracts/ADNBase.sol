// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PunkDNA {
    string[] private _accessoriesType = [
        "Blank",
        "Prescription01",
        "Prescription02",
        "Round"
    ];

    string[] private _clotheColor = [
        "Auburn"
        "Black",
        "Blonde",
        "BlondeGolden",
        "Brown",
        "BrownDark",
        "PastelPink",
        "Blue",
        "Platinum",
        "Red",
        "SilverGray",
        "Blue01",
        "Blue02",
        "Blue03",
        "Gray01",
        "Gray02",
        "Heather",
        "PastelBlue",
        "PastelGreen",
        "PastelOrange",
        "PastelRed",
        "PastelYellow",
        "Pink",
        "White"
    ];

    string[] private _clotheType = [
        "GraphicShirt",
        "Hoodie",
        "ShirtCrewNeck"
    ];

    string[] private _eyeType = [
        "Close",
        "Cry",
        "Default",
        "Happy",
        "Hearts",
        "Side",
        "Squint",
        "Wink",
        "WinkWacky"
    ];

    string[] private _eyebrowType = [
        "Angry",
        "AngryNatural",
        "Default",
        "DefaultNatural",
        "FlatNatural",
        "RaisedExcited",
        "RaisedExcitedNatural",
        "SadConcerned",
        "SadConcernedNatural",
        "UnibrowNatural",
        "UpDown",
        "UpDownNatural"
    ];

    string[] private _facialHairColor = [
        "Blank"
    ];

    string[] private _facialHairType = [
        "Blank"
    ];

    string[] private _hairColor = [
        "Auburn",
        "Black",
        "Blonde",
        "BlondeGolden",
        "Brown",
        "BrownDark",
        "PastelPink",
        "Platinum",
        "Red",
        "Blue",
        "SilverGray"
    ];

    string[] private _hatColor = [
        "Black",
        "Blue01",
        "Blue02",
        "Blue03",
        "Gray01",
        "Gray02",
        "Heather",
        "PastelBlue",
        "PastelGreen",
        "PastelOrange",
        "PastelRed",
        "PastelYellow",
        "Pink",
        "Red",
        "White"
    ];

    string[] private _graphicType = [
        "Bat",
        "Cumbia",
        "Deer",
        "Diamond",
        "Hola",
        "Pizza",
        "Resist",
        "Selena",
        "Bear",
        "SkullOutline",
        "Skull"
    ];

    string[] private _mouthType = [
        "Concerned",
        "Default",
        "Eating",
        "Grimace",
        "Serious",
        "Smile",
        "Tongue",
        "Twinkle"
    ];

    string[] private _skinColor = [
        "Tanned",
        "Yellow",
        "Pale",
        "Light",
        "Brown",
        "DarkBrown",
        "Black"
    ];

    string[] private _topType = [
        "Hat",
        "Hijab",
        "WinterHat4",
        "LongHairBigHair",
        "LongHairBob",
        "LongHairCurly",
        "LongHairCurvy",
        "LongHairDreads",
        "LongHairFrida",
        "LongHairFro",
        "LongHairFroBand",
        "LongHairNotTooLong",
        "LongHairMiaWallace",
        "LongHairStraight",
        "LongHairStraight2",
        "LongHairStraightStrand"
    ];

    // TODO: Calculate DNA

    // Get attributes
    uint8 constant ADN_SECTION_SIZE = 2;

    function _getDNASection(uint256 _dna, uint8 _rightDiscard)
        internal
        pure
        returns (uint8)
    {
        return
            uint8(
                (_dna % (1 * 10**(_rightDiscard + ADN_SECTION_SIZE))) /
                    (1 * 10**_rightDiscard)
            );
    }

    // TODO: Slice DNA function

    function getAccessoriesType(uint256 _dna)
        public
        view
        returns (string memory)
    {
        uint256 dnaSection = _getDNASection(_dna, 0);
        return _accessoriesType[dnaSection % _accessoriesType.length];
    }

    function getClotheColor(uint256 _dna) public view returns (string memory) {
        uint256 dnaSection = _getDNASection(_dna, 2);
        return _clotheColor[dnaSection % _clotheColor.length];
    }

    function getClotheType(uint256 _dna) public view returns (string memory) {
        uint256 dnaSection = _getDNASection(_dna, 4);
        return _clotheType[dnaSection % _clotheType.length];
    }

    function getEyeType(uint256 _dna) public view returns (string memory) {
        uint256 dnaSection = _getDNASection(_dna, 6);
        return _eyeType[dnaSection % _eyeType.length];
    }

    function getEyeBrowType(uint256 _dna) public view returns (string memory) {
        uint256 dnaSection = _getDNASection(_dna, 8);
        return _eyebrowType[dnaSection % _eyebrowType.length];
    }

    function getFacialHairColor(uint256 _dna)
        public
        view
        returns (string memory)
    {
        uint256 dnaSection = _getDNASection(_dna, 10);
        return _facialHairColor[dnaSection % _facialHairColor.length];
    }

    function getFacialHairType(uint256 _dna)
        public
        view
        returns (string memory)
    {
        uint256 dnaSection = _getDNASection(_dna, 12);
        return _facialHairType[dnaSection % _facialHairType.length];
    }

    function getHairColor(uint256 _dna) public view returns (string memory) {
        uint256 dnaSection = _getDNASection(_dna, 14);
        return _hairColor[dnaSection % _hairColor.length];
    }

    function getHatColor(uint256 _dna) public view returns (string memory) {
        uint256 dnaSection = _getDNASection(_dna, 16);
        return _hatColor[dnaSection % _hatColor.length];
    }

    function getGraphicType(uint256 _dna) public view returns (string memory) {
        uint256 dnaSection = _getDNASection(_dna, 18);
        return _graphicType[dnaSection % _graphicType.length];
    }

    function getMouthType(uint256 _dna) public view returns (string memory) {
        uint256 dnaSection = _getDNASection(_dna, 20);
        return _mouthType[dnaSection % _mouthType.length];
    }

    function getSkinColor(uint256 _dna) public view returns (string memory) {
        uint256 dnaSection = _getDNASection(_dna, 22);
        return _skinColor[dnaSection % _skinColor.length];
    }

    function getTopType(uint256 _dna) public view returns (string memory) {
        uint256 dnaSection = _getDNASection(_dna, 24);
        return _topType[dnaSection % _topType.length];
    }

    function deterministicPseudoRandomDNA(uint256 _tokenId, address _minter)
        public 
        pure
        returns (uint256)
    {
        uint256 combinedParams = _tokenId + uint160(_minter);
        bytes memory encodedParams = abi.encodePacked(combinedParams);
        bytes32 hashedParams = keccak256(encodedParams);

        return uint256(hashedParams);
    }

}