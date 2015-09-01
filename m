X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2170" "Tuesday" "1" "September" "2015" "14:27:48" "+0530" "Dis close" "disclose@cybersecurityworks.com" "<CAMWaY3MZ3WiKhLaKyz2ehmFHwL5N+u8JP3kXT4QafDQFU09MRQ@mail.gmail.com>" "103" "[oss-security] Re: CVE Request - LFI/Path Traversal in NextGen Gallery WordPress Plugin." nil nil nil "9" "2015090108:57:48" "[oss-security] Re: CVE Request - LFI/Path Traversal in NextGen Gallery WordPress Plugin." (number mark "U       disclose@cyb Sep  1  103/2170  " thread-indent "\"[oss-security] Re: CVE Request - LFI/Path Traversal in NextGen Gallery WordPress Plugin.\"\n") "<CAMWaY3OZfnQ=yBQT9kDSaUvozzxOOX6wnMDBw9+djpdD8Hsccg@mail.gmail.com>" ("<CAMWaY3M07iTMoOswVgZR172J-4PB6UN6Xt0TsoZXKsUGSwdNxw@mail.gmail.com>" "<CAMWaY3OZfnQ=yBQT9kDSaUvozzxOOX6wnMDBw9+djpdD8Hsccg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3591 invoked by uid 550); 1 Sep 2015 11:07:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32724 invoked from network); 1 Sep 2015 08:58:00 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=UPkujm8emxQ0Oz5kJ/rJqkZSSS4Dr4NveTpAREqOAdU=;
        b=exVUkhyb7uuOiyOKpfk8NWlsQNxjY4+tPCFsM4U+RfDWYkqAUGwzh4eNoJY5vmWar+
         l5Q29hRw19BfUneU2xfwcuG6bYEnXoiKp7Xmbl8mE6X8pibE67zXTwFCGvSU51bLaRAD
         OZemhbNzXqHO8yi+V0HfdXwEi6De806JuCSb9uwQ/Vwl2Gzjw9JiiFJpvuV/ah6BkmL1
         9Dnu2NINAOMHpiblde6g695Wptmw94qbAaXkT3sd2030c6+OeKaWJv0e3KF6Opg9tPiD
         4tbjdJ/TtEaCHB2sz9Z2iQtfXTlPW5Ql6PZlqsfBFNT35kLCaYSjCVctsblS0GvHhsco
         L8OA==
X-Gm-Message-State: ALoCoQnaJQzisOHvdBNQFIQ3yLVeX3Z81wvt1+PgGnF8xD96Tq9rS5xoffbTHUNDJF3mox6vv99A
MIME-Version: 1.0
X-Received: by 10.107.37.12 with SMTP id l12mr26841312iol.92.1441097868735;
 Tue, 01 Sep 2015 01:57:48 -0700 (PDT)
In-Reply-To: <CAMWaY3OZfnQ=yBQT9kDSaUvozzxOOX6wnMDBw9+djpdD8Hsccg@mail.gmail.com>
References: <CAMWaY3M07iTMoOswVgZR172J-4PB6UN6Xt0TsoZXKsUGSwdNxw@mail.gmail.com>
	<CAMWaY3OZfnQ=yBQT9kDSaUvozzxOOX6wnMDBw9+djpdD8Hsccg@mail.gmail.com>
Date: Tue, 1 Sep 2015 14:27:48 +0530
Message-ID: <CAMWaY3MZ3WiKhLaKyz2ehmFHwL5N+u8JP3kXT4QafDQFU09MRQ@mail.gmail.com>
From: Dis close <disclose@cybersecurityworks.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=001a1141b24e8d9429051eabbec7
Subject: [oss-security] Re: CVE Request - LFI/Path Traversal in NextGen Gallery WordPress Plugin.

--001a1141b24e8d9429051eabbec7
Content-Type: text/plain; charset=UTF-8

Hi List:


"Correction in the information."

The vulnerability is still not fixed even in the latest version 2.1.9. It
can still be exploited.

On 1 September 2015 at 13:00, Dis close <disclose@cybersecurityworks.com>
wrote:

> Hi List:
>
>
> After the vulnerability was disclosed in public the vendor has fixed the
> issue on the same day 28-08-2015 in the latest version i.e NextGen Gallery
> 2.1.9. (https://wordpress.org/plugins/nextgen-gallery/) .
>
> Please let us know the status for the CVE.
>
>
> On 28 August 2015 at 15:50, Dis close <disclose@cybersecurityworks.com>
> wrote:
>
>> Hi List:
>>
>>
>> We are requesting CVE for the below mentioned security issue in NextGen
>> Gallery Plugin:
>>
>>
>> Plugin Details:
>> ==============
>> Plugin Name: NextGen Gallery
>> Version: 2.1.7
>> Homepage: https://wordpress.org/plugins/nextgen-gallery/
>>
>>
>>
>> Description
>> ===============
>> NextGEN Gallery is most popular *WordPress Gallery Plugin *with over 13
>> millions downloads.
>>
>> Vulnerability
>> ===============
>> The plugin fails to validate user input in one of the variables, which
>> allows a  log-in user to access system files and other unauthorized files
>> on the server.
>>
>> POC Video Link: https://www.youtube.com/watch?v=KkPVMxubUis
>>
>>
>> Proof of Concept
>> ================
>>
>> Accessing the POST request http://localhost/wordpress/?photocrati_ajax=1
>> and modifying the *dir* variable with ../../../ input user can traverse
>> file system and access files even outside the application directory.
>>
>>
>> Disclosure Timeline
>> ==================
>>
>> 17-02-2015: Reported to WP Plugins
>> 18-02-2015: Acknowledged by WP Plugin, saying that vendor will be
>> informed. But till now no response from WP plugin or vendor.
>>
>>
>> Discovered by ( Please provide credit to following)
>> =====================================
>>
>> Sathish Kumar
>> Cyber Security Works Pvt Ltd.
>>
>>
>> ----------
>> Cheers !!!
>>
>> Team CSW
>>
>
>
>
> --
> ----------
> Cheers !!!
>
> Team CSW
>



-- 
----------
Cheers !!!

Team CSW

--001a1141b24e8d9429051eabbec7--
