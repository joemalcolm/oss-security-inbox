X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2727" "Thursday" "27" "August" "2015" "12:04:06" "+0530" "Dis close" "disclose@cybersecurityworks.com" "<CAMWaY3NZAuhZOz1eq8P4uXrxN+um=pSLxbXiAB18JqEsVQW-gg@mail.gmail.com>" "96" "[oss-security] Re: CVE Request : Serenity Media Player Buffer Overflow" nil nil nil "8" "2015082706:34:06" "[oss-security] Re: CVE Request : Serenity Media Player Buffer Overflow" (number mark "U       disclose@cyb Aug 27   96/2727  " thread-indent "\"[oss-security] Re: CVE Request : Serenity Media Player Buffer Overflow\"\n") "<20150826170228.D4D417BC02D@smtpvmsrv1.mitre.org>" ("<CAMWaY3N6VeFvW4A+ZPqDkMTy-vkP9XgTka6pfj+9BSjLfs+9rA@mail.gmail.com>" "<20150826170228.D4D417BC02D@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7905 invoked by uid 550); 27 Aug 2015 10:32:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7740 invoked from network); 27 Aug 2015 06:34:18 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=P51AyUHmdmgWbjjrugYbF1N8v8yjOqei4F+iNWl4J/k=;
        b=D87iXNc4h94FaF0Q3x1sCKGF1/iTwikyPdQSqsPpOnO1S3zhNRLirhNlH+PG3aF4gx
         UZ2bH3WyXkx2TPmJZcznRi3eZlAzkwUC1geiTjQ79pBHpeXbwJrW8tIiKmlNBNRe19vB
         mjMWtNMKe/xBhw6rLXOd+DjLuSbVVRHPbFZPTXA5TMYSPWPsxYo07y1iksFXnSXdfMhP
         QVeRQAgyqJAcb/RSui80Y+Z7vcOK0flnXdytvCLY9I0k88Wfio5Z4CTHqS0S3aaf87iP
         xEK+HvnRRcIRaUat6eNiy4OdWRQdqyWY9F0dGC0OqDvxBXsSiFW6BXk6vCafpXlKhXK+
         dWLA==
X-Gm-Message-State: ALoCoQnIto0n0/EXHq8NWglw6O7IeMsxlTgzm/X/rL1S5/DqAmHRIY4tIs8s6McQfjjyQhtwBcrO
MIME-Version: 1.0
X-Received: by 10.50.129.99 with SMTP id nv3mr9009163igb.20.1440657246633;
 Wed, 26 Aug 2015 23:34:06 -0700 (PDT)
In-Reply-To: <20150826170228.D4D417BC02D@smtpvmsrv1.mitre.org>
References: <CAMWaY3N6VeFvW4A+ZPqDkMTy-vkP9XgTka6pfj+9BSjLfs+9rA@mail.gmail.com>
	<20150826170228.D4D417BC02D@smtpvmsrv1.mitre.org>
Date: Thu, 27 Aug 2015 12:04:06 +0530
Message-ID: <CAMWaY3NZAuhZOz1eq8P4uXrxN+um=pSLxbXiAB18JqEsVQW-gg@mail.gmail.com>
From: Dis close <disclose@cybersecurityworks.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=047d7b3a91e66de31c051e452789
Subject: [oss-security] Re: CVE Request : Serenity Media Player Buffer Overflow

--047d7b3a91e66de31c051e452789
Content-Type: text/plain; charset=UTF-8

Hi List:


It does not seems that my exploit is same as
http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-4097

My exploit works on the following :

http://malsmith.kyabram.biz/serenity/serenity-3.2.3-src.zip
src/inter.c

 In MplayAutoComplete  it is defined as TCHAR szTemp2[200]
 Since the application fails to perform boundary check on user supplied
data on

       memcpy(szTemp2,
szTemp,
_tcslen(szTemp) * sizeof(TCHAR));

It leads to over flow.


Please let me know if you need any further clarification.


---
Cheers !!!

Team CSW



On 26 August 2015 at 22:32, <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> >
> https://github.com/cybersecurityworks/Diclosed/blob/master/Serenity%20audio%20Player%203.2.3%20SEH%20Buffer%20Overflow
>
> > SEH Local buffer overflow in Serenity Audio Player 3.2.3 (earlier known
> as Malx Media Player)
>
> > BUG_TITLE:Exploitable - Privileged Instruction Violation starting at
> image00400000+0x0000000000000055 (Hash=0x5e212578.0x3a4f4f12)
> > EXPLANATION:A privileged instruction exception indicates that the
> attacker controls execution flow.
>
> http://malsmith.kyabram.biz/serenity/serenity-3.2.3-src.zip
> src/plgui.c
> MplayInputFile
>
> CHAR szTemp[MAX_PATH];
> _ftscanf(fp, _T("%h[^\n]%*hc"), szTemp)
>
> Are your exploit and the exploit referenced from
> http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-4097 both about
> this one vulnerable _ftscanf call? If so, then the same CVE ID of
> CVE-2009-4097 is applicable to both exploits.
>
> - --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1
>
> iQIbBAEBCAAGBQJV3fB0AAoJEL54rhJi8gl5BCcP90nDaLz5Aw1s/pvBxB/KVZqa
> nhN+JuVY/8SR+K3qCP1XT6365UzV0+i4A9QQXVS8PS6Dn8j9Q7Y1Cq2m/K5HiehW
> ghAMtul96DRS2Ti1OkgM1dmmO9RPv5eMzKiC2MbLIvWziyeg5W/y9SlAP95aZiqN
> WV9Ii4HjrZV9LIWRL3sOEXSlCJ7Ez2lPWaosItuamScU9ZHOskmn+hl7xNzFvCyn
> hqTCIPT2KQ9DSh00TGyalx5Qwu38j0XzsKkA+6B8g+VsRCq4yJpitF0L4MCBOQHr
> f2jgKw9OktUN/de3Qx0dzg3X00jkcrM7RrDNGW83Gb2FDa9TZLVh+Dio0znTre6K
> AyfIhtPDAXQnx5NsXcSsRh/1VLOuP1eRvGzWnnd5LeVODNCJ+nJNGiHQ3FQNOzJj
> mBuGI17mFRCNlYsatpTpMGoSlxHdJPOr7rFZNX0Y7TG1N+GZUb6DVrfsprTCHNle
> Pq+seeT5xwrXo4CI57KVvXC11KCHU87f2ldtVjspO50lzyRASzUJhEsHsZ35CbX7
> Uc6ZksJls9vs3TvHx8cw6e3iPeThMLCsBx7pcXcbHbFXz4eNCPa2VPkV1Bfa8nKx
> gtXXq6b0pvyK+2mvhLy7wQM0JmVP+Cwjim/3VHcM8F5SOfbRMwcA2vGAAnp5/tMR
> 5oBhIuKDZ2obycQoZ+E=
> =8zwy
> -----END PGP SIGNATURE-----
>



-- 
----------
Cheers !!!

Team CSW

--047d7b3a91e66de31c051e452789--
