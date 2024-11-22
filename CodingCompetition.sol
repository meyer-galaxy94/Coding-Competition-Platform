
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CodingCompetition {
    struct Participant {
        address addr;
        string name;
        uint score;
    }

    Participant[] public leaderboard;

    function addParticipant(address addr, string memory name, uint score) public {
        leaderboard.push(Participant(addr, name, score));
    }

    function getLeaderboard() public view returns (Participant[] memory) {
        return leaderboard;
    }
}
