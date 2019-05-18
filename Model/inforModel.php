<?php 

    require_once SITE_ROOT."/Services/AccountService.php";
    require_once SITE_ROOT."/Services/ArtistService.php";

    class InforModel {
        private $account;
        private $artist;

        public function __construct()
        {
            $this->account = new AccountService();
            $this->artist = new ArtistService();
        }

        public function getAccount($username)
        {
            return $this->account->getAccount($username);
        }

        public function getAccountDetail($username)
        {
            return $this->account->getAccountDetail($username);
        }

        public function getComposer($nameComposer)
        {
            return $this->artist->getComposer($nameComposer);
        }

        public function getSinger($nameSinger)
        {
            return $this->artist->getSinger($nameSinger);
        }
    }

?>