X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1598" "Wednesday" "14" "December" "2016" "07:26:34" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1yr2POsK=ntTap9dUKRTFQCxcdDza-HxHyPLOS1A2kDA@mail.gmail.com>" "56" "Re: [oss-security] vulnerable version: 4.8.12 and previous versions but xml file says: cpe:/o:linux:linux_kernel:4.8.12\"/>" "^Date:" nil nil "12" "2016121414:26:34" "[oss-security] vulnerable version: 4.8.12 and previous versions but xml file says: cpe:/o:linux:linux_kernel:4.8.12\"/>" (number mark "        kseifried@re Dec 14   56/1598  " thread-indent "\"Re: [oss-security] vulnerable version: 4.8.12 and previous versions but xml file says: cpe:/o:linux:linux_kernel:4.8.12\"/>\"\n") "<3230301C09DEF9499B442BBE162C5E48AC0EAB12@sestoex09.enea.se>" ("<3230301C09DEF9499B442BBE162C5E48AC0EAB12@sestoex09.enea.se>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8104 invoked by uid 550); 14 Dec 2016 14:26:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8081 invoked from network); 14 Dec 2016 14:26:46 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=KsbzMKDaC2Bj3cjsBP8Ovqe/kMEQQWDe891j7UhA4Eo=;
        b=h30xG0tIGAD6NOeJPISbIzQnRWhGkj0ihJGI/xS6xf/U9uInJhjfWV4nHY77HTmNG8
         4z4QWm60WJNkTOXf+o1MsXz39n8ss2NGwd57SWhvvulD9qSBGdAGfBkWCWMAiORs55WE
         9jwUYX93AnZFwEd2tvO+1IuW6NWv0WiTffhoW4wLLpmLze1ptz10DGu7f4GA0wawHuV7
         otuLz7g1rt5yR90e+qIMfD8eLNLIxQLOHyBn8YWZEiapvKdrgA/EOxwVcZlQI796cpQd
         Ox4KOXRV8CdKYvCkujBz39+91Jx+x8n9JL9iOwC54Fi9bnZzWRYz+Q5XF9IBZsrZ62Kf
         oh/Q==
X-Gm-Message-State: AKaTC01Q++WlB11w8R++iQ5AFWuIzc1qT6XdvjlWikc/uVKyvsdGO4lVP+6wVJO/hgB7WFMChZpblcpWlhZ/0cjh
X-Received: by 10.157.5.70 with SMTP id 64mr56533588otw.104.1481725595120;
 Wed, 14 Dec 2016 06:26:35 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48AC0EAB12@sestoex09.enea.se>
References: <3230301C09DEF9499B442BBE162C5E48AC0EAB12@sestoex09.enea.se>
Message-ID: <CANO=Ty1yr2POsK=ntTap9dUKRTFQCxcdDza-HxHyPLOS1A2kDA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c04817ac0945605439f1fed
Date: Wed, 14 Dec 2016 07:26:34 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] vulnerable version: 4.8.12 and previous versions
 but xml file says: cpe:/o:linux:linux_kernel:4.8.12"/>
To: oss-security <oss-security@lists.openwall.com>

--94eb2c04817ac0945605439f1fed
Content-Type: text/plain; charset=UTF-8

Why are you complaining about a nist.gov website/data on an opensource
security mailing list/to MITRE? (hint: we can't fix it and neither can
MITRE) Please contact NIST.



On Wed, Dec 14, 2016 at 1:19 AM, Sona Sarmadi <sona.sarmadi@enea.com> wrote:

> Hi all,
>
> It seems that nvd.xml files (e.g. nvdcve-2.0-2016.xml) does not list
> vulnerable versions correctly. One example is the following CVE. Vulnerable
> versions are according to the link below "linux kernel 4.8.12 and previous
> versions":
>
> https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2016-8655
>
>       Race condition in net/packet/af_packet.c in the Linux kernel through
> 4.8.12 ..
>
>
> Vulnerable software and versions
> + Configuration 1
> * OR
> * cpe:/o:linux:linux_kernel:4.8.12 and previous versions
>
> While in the xml file it just mention "cpe:/o:linux:linux_kernel:4.8.12"
>
> nvdcve-2.0-2016.xml:
> ..
> <entry id="CVE-2016-9919">
>     <vuln:vulnerable-configuration id="http://nvd.nist.gov/">
>       <cpe-lang:logical-test operator="OR" negate="false">
>         <cpe-lang:fact-ref name="cpe:/o:linux:linux_kernel:4.8.12"/>
>       </cpe-lang:logical-test>
>     </vuln:vulnerable-configuration>
>     <vuln:vulnerable-software-list>
>       <vuln:product>cpe:/o:linux:linux_kernel:4.8.12</vuln:product>
>
> Cheers
> //Sona
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c04817ac0945605439f1fed--
