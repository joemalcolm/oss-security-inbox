X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2049" "Thursday" "21" "April" "2016" "13:46:49" "-0400" "Marc Deslauriers" "marc.deslauriers@canonical.com" "<57191209.7090902@canonical.com>" "62" "Re: [oss-security] CVE request: PHP issues fixed in 7.0.5, 5.6.20 and 5.5.34 releases" nil nil nil "4" "2016042117:46:49" "[oss-security] CVE request: PHP issues fixed in 7.0.5, 5.6.20 and 5.5.34 releases" (number mark "U       marc.deslaur Apr 21   62/2049  " thread-indent "\"Re: [oss-security] CVE request: PHP issues fixed in 7.0.5, 5.6.20 and 5.5.34 releases\"\n") "<20160421174220.GA19359@eldamar.local>" ("<570BFDF5.4080908@vorlons.info>" "<20160421174220.GA19359@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15822 invoked by uid 550); 21 Apr 2016 17:47:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15804 invoked from network); 21 Apr 2016 17:47:06 -0000
To: oss-security@lists.openwall.com
References: <570BFDF5.4080908@vorlons.info>
 <20160421174220.GA19359@eldamar.local>
Cc: security@php.net, Lior Kaplan <kaplan@debian.org>,
 =?UTF-8?B?T25kxZllaiBTdXLDvQ==?= <ondrej@debian.org>
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Message-ID: <57191209.7090902@canonical.com>
Date: Thu, 21 Apr 2016 13:46:49 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <20160421174220.GA19359@eldamar.local>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE request: PHP issues fixed in 7.0.5, 5.6.20 and
 5.5.34 releases

On 2016-04-21 01:42 PM, Salvatore Bonaccorso wrote:
> Hi,
> 
> On Mon, Apr 11, 2016 at 09:41:41PM +0200, Matthias Geerdsen wrote:
>> -----BEGIN PGP SIGNED MESSAGE-----
>> Hash: SHA256
>>
>> Hi,
>>
>> could you please provide CVE IDs for the following PHP issues fixed in
>> the latest releases, as I have not yet seen any IDs yet:
>>
>> - -  Buffer over-write in finfo_open with malformed magic file
>> https://bugs.php.net/bug.php?id=71527
>> http://bugs.gw.com/view.php?id=522
>>
>> - - Integer overflow in php_raw_url_encode
>> https://bugs.php.net/bug.php?id=71798
>> https://git.php.net/?p=php-src.git;a=commit;h=95433e8e339dbb6b5d5541473c
>> 1661db6ba2c451
>>
>>
>> - - php_snmp_error() Format String Vulnerability
>> https://bugs.php.net/bug.php?id=71704
>> https://git.php.net/?p=php-src.git;a=commit;h=6e25966544fb1d2f3d7596e060
>> ce9c9269bbdcf8
>>
>>
>> - - Invalid memory write in phar on filename containing \0 inside name
>> https://bugs.php.net/bug.php?id=71860
>> https://gist.github.com/smalyshev/80b5c2909832872f2ba2
>>
>>
>> - - AddressSanitizer: negative-size-param (-1) in mbfl_strcut
>> https://bugs.php.net/bug.php?id=71906
>> https://gist.github.com/smalyshev/d8355c96a657cc5dba70
> 
> Can CVE identiers be assigned for those?
> 
> The recent Ubuntu USN 2952-1 as well fixed some other issues without
> CVE identifers, cf. http://www.ubuntu.com/usn/usn-2952-1/
> 

FYI, here is information on the two issues that didn't have CVE numbers in the
Ubuntu update:

1- libxml_disable_entity_loader setting is shared between threads

https://bugs.php.net/bug.php?id=64938
https://bugs.launchpad.net/ubuntu/+source/php5/+bug/1509817
http://framework.zend.com/security/advisory/ZF2015-06
http://git.php.net/?p=php-src.git;a=commit;h=de31324c221c1791b26350ba106cc26bad23ace9

2- openssl_random_pseudo_bytes() is not cryptographically secure

https://bugs.php.net/bug.php?id=70014
https://bugs.launchpad.net/ubuntu/+source/php5/+bug/1534203
http://git.php.net/?p=php-src.git;a=commit;h=16023f3e3b9c06cf677c3c980e8d574e4c162827

Marc.


