X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3840" "Thursday" "11" "August" "2016" "21:34:14" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2f=cqmd14DeZkqW4FZeeh0w0RFKHZnCPa7471rsapVkQ@mail.gmail.com>" "102" "Re: [oss-security] CVE Request - Gnu Wget 1.17 - Design Error Vulnerability" "^Cc:" nil nil "8" "2016081203:34:14" "[oss-security] CVE Request - Gnu Wget 1.17 - Design Error Vulnerability" (number mark "        kseifried@re Aug 11  102/3840  " thread-indent "\"Re: [oss-security] CVE Request - Gnu Wget 1.17 - Design Error Vulnerability\"\n") "<F1719FA0B756A0418954A40BEB1A013849B1062B@BRN1WNEXMBX01.vcorp.ad.vrsn.com>" ("<F1719FA0B756A0418954A40BEB1A013849B1062B@BRN1WNEXMBX01.vcorp.ad.vrsn.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24109 invoked by uid 550); 12 Aug 2016 03:34:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24085 invoked from network); 12 Aug 2016 03:34:27 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=lBQ1UPr7R4jstQIkdoHa5AsQt9jD4YQx66yxtkpUjLc=;
        b=gpGewsZ23/CeDru1puJoy7kW0ALe11gQbI20nIDrTxVd4lCXHPxtvvxjjFKmpY7TmP
         8j0BVsWxAXRvz5y+XnGTdiLXLdRydpj1BoJ++zoZ6E82+PTPFuPry+ejZr6tah/+w4yL
         lQ/9CXhO3MJqRmlGkok1KHgjfmldp6IMlHGp3UeVnK6XWxQl4UycP11tvOIUMiCv+lqK
         x71Ox976UPRqDzFDpKRCjtGIUBEA3LJToulqglZLQkHVVmvzq/q74iKyt+/DzHDlDsHf
         pDO8oglVFRF8c4x1s3/uKAhz0VWgGOVrIq28+7HmQZuAox7zWbX4vFsH0BNUNUNtOleh
         NhYQ==
X-Gm-Message-State: AEkoouuXTY7jDNnaU97bnEfTYih6oAl5WMAekGjY7Y2H5lxnFME8GsS0XiNQo/iHAkmWGOXAeXN5rzVvD6SDMWVe
X-Received: by 10.157.43.21 with SMTP id o21mr4132215otb.23.1470972855511;
 Thu, 11 Aug 2016 20:34:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <F1719FA0B756A0418954A40BEB1A013849B1062B@BRN1WNEXMBX01.vcorp.ad.vrsn.com>
References: <F1719FA0B756A0418954A40BEB1A013849B1062B@BRN1WNEXMBX01.vcorp.ad.vrsn.com>
Message-ID: <CANO=Ty2f=cqmd14DeZkqW4FZeeh0w0RFKHZnCPa7471rsapVkQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1141d4c0870a9a0539d78eb9
Cc: "dawid@legalhackers.com" <dawid@legalhackers.com>, "bug-wget@gnu.org" <bug-wget@gnu.org>
Date: Thu, 11 Aug 2016 21:34:14 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - Gnu Wget 1.17 - Design Error Vulnerability
To: oss-security <oss-security@lists.openwall.com>

--001a1141d4c0870a9a0539d78eb9
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 11, 2016 at 3:11 PM, Misra, Deapesh <dmisra@verisign.com> wrote:

> Hi,
>
> ------------------
> - Background -
> ------------------
>
> Here at iDefense, Verisign Inc, we have a Vulnerability Contributor
> Program (VCP) where we buy vulnerabilities.
>
> Recently, security researcher Dawid Golunski sold us an interesting
> vulnerability within Wget. We asked Red Hat (secalert at redhat dot com) if
> they would help us with the co-ordination (patching, disclosure, etc) of
> this vulnerability. Once they graciously accepted, we discussed the
> vulnerability with them. After their initial triage, Red Hat recommended
> that we publicly post the details of this vulnerability to this mailing
> list for further discussion and hence this email.
>
>
That would have been me =).


> It is very easy for an attacker to win this race as the file only gets
> deleted after the HTTP connection is terminated. He can therefore keep the
> connection open as long as necessary to make use of the uploaded file.
> Below is proof of concept exploit that demonstrates this technique.
>

Please note that the attacker would also have to have access to the local
file system, either shell access or by some additional exploit,
additionally they would have to have read access to the file wget is
downloading (so same security context, or really poor permissions).


> it is evident that the accept/reject rule is applied only after the
> download. This seems to be a design decision which has a security aspect to
> it. As discussed above,
>

It has to be. a PHP script can serve any file type for example. To filter
on the URI is not what is being asked, the downloaded file is what is being
filtered.


>    - an attacker can ensure that the files which were not meant to be
> downloaded are downloaded to the location on the victim server (which
> should be a publicly accessible location)
>    - the attacker can keep the connection open, even if the file/s have
> been downloaded on the victim server
>    - the attacker can then access these files OR use them in a separate
> attack
>    - the victim server's security is impacted since the
> developer/administrator was never warned explicitly that 'rejected files'
> can have a transient life on the victim server
>
>
> It looks like the design for wget needs to be changed so that the file it
> downloads to 'recursively search' through is not saved in a location which
> is accessible by the attacker. Additionally the documentation needs to be
> enhanced with the explicit mention of the 'transient nature' of the files
> which are to be rejected.
>

This is easily accomplished using a safe umask for the file.

Please note again that to exploit this you would need a situation where the
attacker can control what wget is fetching, or execute a man in the middle
attack, AND has local access to the system downloading the file AND has
permissions to read the file AND some sort of additional vulnerability that
requires being able to read a file in order to escalate privileges.

Wget is simply doing exactly what is asked of it, downloading files, and
once downloaded checking if you wanted to keep them or not. Same as any
HTTP(S) library that has a mirror function and filter function.

We welcome your comments/suggestions.
>
> thanks,
>
> Deapesh.
> iDefense Labs, Verisign Inc.
> http://www.verisign.com/en_US/security-services/security-
> intelligence/vulnerability-reports/index.xhtml
>
> PS: I hope the maintainer Giuseppe Scrivano gets to see this via the
> bug-wget list I have CC-ed.
>
>


-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1141d4c0870a9a0539d78eb9--
