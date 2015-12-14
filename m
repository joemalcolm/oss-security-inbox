X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["482" "Monday" "14" "December" "2015" "21:58:13" "-0200" "Till Kamppeter" "till.kamppeter@gmail.com" "<566F5795.40201@gmail.com>" "16" "[oss-security] Re: CVE Request: Cups Filters/Foomatic Filters: Does not consider semicolon as an illegal shell escape character" "^Cc:" nil nil "12" "2015121423:58:13" "[oss-security] Re: CVE Request: Cups Filters/Foomatic Filters: Does not consider semicolon as an illegal shell escape character" (number mark "        till.kamppet Dec 14   16/482   " thread-indent "\"[oss-security] Re: CVE Request: Cups Filters/Foomatic Filters: Does not consider semicolon as an illegal shell escape character\"\n") "<20151214213230.52EC66C0180@smtpvmsrv1.mitre.org>" ("<20151214213230.52EC66C0180@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5605 invoked by uid 550); 15 Dec 2015 00:36:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5433 invoked from network); 14 Dec 2015 23:58:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-type:content-transfer-encoding;
        bh=Zx8XbrT5P1FfcAAZU74yK4D2XeerjYlKEfVxWZJv1Kw=;
        b=UERmBDFuBJqkzkg+jzTh/tzfiP6Aau6a9kE+o+CP2uGr/vyGnh5jmvz/ljENDCzsjS
         mpF/wiwUeZzdSb46LYqZpHwBAHBJBbQC4N398jv0cZsqJQR9M1yd3sieHNp4FVIyO/Qn
         1SixNHrBby4cqvd59qIOgt2OLdVOBJvuV7Bk6tmFzmbYaTRMzYNDbvcQm/Bje6mawlz+
         xSOmXYTXoodfLacelcxk0wqRus7xugbSV9m+abZI0nfVSMdJ61QY0BOk3XulUqO4eWLx
         GlFpO5NAK/V3MS06a9DgMaIqo/K7e80eaLGE/tqWF5eAN3QFI8agJN3y39H5dfcEKchP
         AtGw==
X-Received: by 10.129.102.193 with SMTP id a184mr21481737ywc.7.1450137495757;
        Mon, 14 Dec 2015 15:58:15 -0800 (PST)
References: <20151214213230.52EC66C0180@smtpvmsrv1.mitre.org>
Message-ID: <566F5795.40201@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <20151214213230.52EC66C0180@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com, adam.chester@pentest.co.uk,
 Debian Printing Team <Debian-printing@lists.debian.org>
Date: Mon, 14 Dec 2015 21:58:13 -0200
From: Till Kamppeter <till.kamppeter@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Cups Filters/Foomatic Filters: Does not consider
 semicolon as an illegal shell escape character
To: cve-assign@mitre.org, carnil@debian.org

On 12/14/2015 07:32 PM, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
>> There was another commit in cups-filters upstream (revision 7419) as
>> well adding (;) to the set of illegal shell escape characters:
>>
>> http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/revision/7419
>
> Use CVE-2015-8560.

Thank you very much. I have released cups-filters 1.4.0 upstream now 
with reference to this CVE in the NEWS file.

    Till

