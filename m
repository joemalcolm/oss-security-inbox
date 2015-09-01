X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1815" "Tuesday" "1" "September" "2015" "13:00:00" "+0530" "Dis close" "disclose@cybersecurityworks.com" "<CAMWaY3OZfnQ=yBQT9kDSaUvozzxOOX6wnMDBw9+djpdD8Hsccg@mail.gmail.com>" "83" "[oss-security] Re: CVE Request - LFI/Path Traversal in NextGen Gallery WordPress Plugin." nil nil nil "9" "2015090107:30:00" "[oss-security] Re: CVE Request - LFI/Path Traversal in NextGen Gallery WordPress Plugin." (number mark "U       disclose@cyb Sep  1   83/1815  " thread-indent "\"[oss-security] Re: CVE Request - LFI/Path Traversal in NextGen Gallery WordPress Plugin.\"\n") "<CAMWaY3M07iTMoOswVgZR172J-4PB6UN6Xt0TsoZXKsUGSwdNxw@mail.gmail.com>" ("<CAMWaY3M07iTMoOswVgZR172J-4PB6UN6Xt0TsoZXKsUGSwdNxw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3351 invoked by uid 550); 1 Sep 2015 11:07:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16257 invoked from network); 1 Sep 2015 07:30:12 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=nGlMFqwkNXRSWuj+fazU/6nsS1yM3TD7lvyufFMZRcE=;
        b=SWoqMKrPPzuDNwgR8aE6HzDnwqiLZIua1G+AzH8W97hB5xLwZg4D7288I7b71F0Jx+
         ZI1kr8CZgNz2gq/Ffv5wX4tYs8ySovnSmM3iBeQTwcWKD6RBP0NjOkvjlBdSH71VGgjS
         RgsZQq8H2BN0tQrvisD/danznt4BHXNVYU8PdjKBAxLg4TZVQOe5uMv8wxqUVGUoqPrI
         EVQu12fv9hmrOCrLLq5vVfiovygQJlzQgL9txmkqyx7UCvL9Rs+ScKp53eEaiGixb5WZ
         DtVTN7W6cwGD1/u5zEL7lsyEw//5+m+v02nRHmKRj//ud1LsCIE1LoQOWgToSednDUlG
         uIDw==
X-Gm-Message-State: ALoCoQnnK9JvEx4LG2NmwZTT0cn+QZgwjSvyBV/S3i5noY3CuFnxHQnaBWg6Li7b9f9nNGNYO9FX
MIME-Version: 1.0
X-Received: by 10.107.37.12 with SMTP id l12mr26619400iol.92.1441092600640;
 Tue, 01 Sep 2015 00:30:00 -0700 (PDT)
In-Reply-To: <CAMWaY3M07iTMoOswVgZR172J-4PB6UN6Xt0TsoZXKsUGSwdNxw@mail.gmail.com>
References: <CAMWaY3M07iTMoOswVgZR172J-4PB6UN6Xt0TsoZXKsUGSwdNxw@mail.gmail.com>
Date: Tue, 1 Sep 2015 13:00:00 +0530
Message-ID: <CAMWaY3OZfnQ=yBQT9kDSaUvozzxOOX6wnMDBw9+djpdD8Hsccg@mail.gmail.com>
From: Dis close <disclose@cybersecurityworks.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=001a1141b24e8cce92051eaa843f
Subject: [oss-security] Re: CVE Request - LFI/Path Traversal in NextGen Gallery WordPress Plugin.

--001a1141b24e8cce92051eaa843f
Content-Type: text/plain; charset=UTF-8

Hi List:


After the vulnerability was disclosed in public the vendor has fixed the
issue on the same day 28-08-2015 in the latest version i.e NextGen Gallery
2.1.9. (https://wordpress.org/plugins/nextgen-gallery/) .

Please let us know the status for the CVE.


On 28 August 2015 at 15:50, Dis close <disclose@cybersecurityworks.com>
wrote:

> Hi List:
>
>
> We are requesting CVE for the below mentioned security issue in NextGen
> Gallery Plugin:
>
>
> Plugin Details:
> ==============
> Plugin Name: NextGen Gallery
> Version: 2.1.7
> Homepage: https://wordpress.org/plugins/nextgen-gallery/
>
>
>
> Description
> ===============
> NextGEN Gallery is most popular *WordPress Gallery Plugin *with over 13
> millions downloads.
>
> Vulnerability
> ===============
> The plugin fails to validate user input in one of the variables, which
> allows a  log-in user to access system files and other unauthorized files
> on the server.
>
> POC Video Link: https://www.youtube.com/watch?v=KkPVMxubUis
>
>
> Proof of Concept
> ================
>
> Accessing the POST request http://localhost/wordpress/?photocrati_ajax=1
> and modifying the *dir* variable with ../../../ input user can traverse
> file system and access files even outside the application directory.
>
>
> Disclosure Timeline
> ==================
>
> 17-02-2015: Reported to WP Plugins
> 18-02-2015: Acknowledged by WP Plugin, saying that vendor will be
> informed. But till now no response from WP plugin or vendor.
>
>
> Discovered by ( Please provide credit to following)
> =====================================
>
> Sathish Kumar
> Cyber Security Works Pvt Ltd.
>
>
> ----------
> Cheers !!!
>
> Team CSW
>



-- 
----------
Cheers !!!

Team CSW

--001a1141b24e8cce92051eaa843f--
