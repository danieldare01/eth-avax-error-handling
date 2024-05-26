// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

error PASSWORD_LESS_THAN_8_CHARACTERS(string);

contract ProfilePage {

    struct Profile{
        mapping(address => string) email;
        mapping(address => string) password;
        mapping(address => bool) signedIn;
    }

    Profile profile;

    function enterEmail(string calldata _input) external returns (string memory) {
        Profile storage ps = profile;
        require(bytes(ps.email[msg.sender]).length == 0, "Email already saved");
        ps.email[msg.sender] = _input;

        return "Email saved";
    }

    function enterPassword(string memory _input) external returns (string memory) {
        if (bytes(_input).length < 8) {
            revert PASSWORD_LESS_THAN_8_CHARACTERS(_input);
        }

        Profile storage ps = profile;

        require(bytes(ps.email[msg.sender]).length != 0, "Password already saved");
        ps.password[msg.sender] = _input;

        return "Password saved";
    }

    function signIn() external returns (string memory) {
        assert(!profile.signedIn[msg.sender]);

        profile.signedIn[msg.sender] = true;
        return "Signed in successfully";
    }

    function signOut() external returns (string memory) {
        assert(profile.signedIn[msg.sender]);

        profile.signedIn[msg.sender] = false;
        return "Signed out successfully";
    }
}