X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1832" "Wednesday" "8" "February" "2017" "14:32:29" "-0800" "Ian Zimmerman" "itz@primate.net" "<20170208223043.15051.2370DCC3@matica.foolinux.mooo.com>" "41" "[oss-security] Re: CVE request: Null pointer derefence parsing xml file using libxml 2.9.4 (in recover mode)" nil nil nil "2" "2017020822:32:29" "[oss-security] Re: CVE request: Null pointer derefence parsing xml file using libxml 2.9.4 (in recover mode)" (number mark "U       itz@primate. Feb  8   41/1832  " thread-indent "\"[oss-security] Re: CVE request: Null pointer derefence parsing xml file using libxml 2.9.4 (in recover mode)\"\n") "<CACn5sdQKBq6cDXY_OAp6a+7dYWXtjE6=hSQps5g5aMxtiCTZHQ@mail.gmail.com>" ("<CACn5sdQKBq6cDXY_OAp6a+7dYWXtjE6=hSQps5g5aMxtiCTZHQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20106 invoked by uid 550); 8 Feb 2017 22:42:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12280 invoked from network); 8 Feb 2017 22:32:44 -0000
X-Authentication-Warning: acedia.primate.net: itz set sender to itz@primate.net using -f
Date: Wed, 8 Feb 2017 14:32:29 -0800
From: Ian Zimmerman <itz@primate.net>
To: oss-security@lists.openwall.com
Message-ID: <20170208223043.15051.2370DCC3@matica.foolinux.mooo.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CACn5sdQKBq6cDXY_OAp6a+7dYWXtjE6=hSQps5g5aMxtiCTZHQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACn5sdQKBq6cDXY_OAp6a+7dYWXtjE6=hSQps5g5aMxtiCTZHQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Re: CVE request: Null pointer derefence parsing xml file using
 libxml 2.9.4 (in recover mode)

On 2016-11-05 10:04, Gustavo Grieco wrote:

> We found a null pointer dereference when parsing a xml file using recover
> mode. It was tested in libxml 2.9.4 (ArchLinux x86_64). To reproduce:
> 
> $ xmllint --recover crash-libxml2-recover.xml
> 
> ==27646==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000
> (pc 0x0000004fbd88 bp 0x7ffc3345dff0 sp 0x7ffc3345dfd0 T0)
>     #0 0x4fbd87 in xmlDumpElementContent
> /home/g/Work/Code/libxml2-2.9.4/valid.c:1181
>     #1 0x4fbcd5 in xmlDumpElementContent
> /home/g/Work/Code/libxml2-2.9.4/valid.c:1177
>     #2 0x4fe5ff in xmlDumpElementDecl
> /home/g/Work/Code/libxml2-2.9.4/valid.c:1706
>     #3 0x72e714 in xmlBufDumpElementDecl
> /home/g/Work/Code/libxml2-2.9.4/xmlsave.c:501
>     #4 0x73048f in xmlNodeDumpOutputInternal
> /home/g/Work/Code/libxml2-2.9.4/xmlsave.c:939
>     #5 0x72fc47 in xmlNodeListDumpOutput
> /home/g/Work/Code/libxml2-2.9.4/xmlsave.c:825
>     #6 0x72f6d5 in xmlDtdDumpOutput
> /home/g/Work/Code/libxml2-2.9.4/xmlsave.c:749
>     #7 0x73038f in xmlNodeDumpOutputInternal
> /home/g/Work/Code/libxml2-2.9.4/xmlsave.c:931
>     #8 0x732412 in xmlDocContentDumpOutput
> /home/g/Work/Code/libxml2-2.9.4/xmlsave.c:1234
>     #9 0x735883 in xmlSaveDoc /home/g/Work/Code/libxml2-2.9.4/xmlsave.c:1936
>     #10 0x40ba0f in parseAndPrintFile
> /home/g/Work/Code/libxml2-2.9.4/xmllint.c:2712
>     #11 0x411eb6 in main /home/g/Work/Code/libxml2-2.9.4/xmllint.c:3767
>     #12 0x7f23dcd4c290 in __libc_start_main (/usr/lib/libc.so.6+0x20290)
>     #13 0x4032b9 in _start
> (/home/g/Work/Code/libxml2-2.9.4/xmllint+0x4032b9)

Where did this one ever go?  Is there a CVE?  Is there a patch?

-- 
Please *no* private Cc: on mailing lists and newsgroups
Personal signed mail: please _encrypt_ and sign
Don't clear-text sign: http://cr.yp.to/smtp/8bitmime.html
