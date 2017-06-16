X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["720" "Thursday" "15" "June" "2017" "21:35:29" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<3a481763-0461-fca6-72d3-15c3bbe1120f@redhat.com>" "27" "Re: [oss-security] Do I have to inform someone about CVE?" "^Date:" nil nil "6" "2017061603:35:29" "[oss-security] Do I have to inform someone about CVE?" (number mark "        kseifried@re Jun 15   27/720   " thread-indent "\"Re: [oss-security] Do I have to inform someone about CVE?\"\n") "<q9GnziJFIgpS6F561_2bPEQXnRjUmAK7A5jNWRzfrN-eWZA531SMyZwbld9orzTcGJdxW5dZyoQntvNWC2hxkHqIVVuXVswje5AAQALTfNY=@protonmail.com>" ("<q9GnziJFIgpS6F561_2bPEQXnRjUmAK7A5jNWRzfrN-eWZA531SMyZwbld9orzTcGJdxW5dZyoQntvNWC2hxkHqIVVuXVswje5AAQALTfNY=@protonmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13771 invoked by uid 550); 16 Jun 2017 03:35:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13748 invoked from network); 16 Jun 2017 03:35:44 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=7m6GbNxYPyUPcU6SPZAqOZcEnZPYyQnoMdTdGbBO9W8=;
        b=reRiqchSH1Pdy0GO8b49KRC80oMZG5VN9yXo/bWvKez1ya93Rn8mMrhdaTJcOCgDg9
         cU8GJL0loU7dCkJ43hm8bL1MrwVe/kw1OZ+XvTsUscJM/GnMWKyltp1gVPoL/SOyXzES
         sqW6HtjYhtyf6SvMD37jq6z+o3ymf2qLNRZpgeLMydlsTkGpKWUscF8OGLnEVMtMcREf
         Y4A6D95Q23zoiwDgY2mdBzaf46/yYhs6dASIfVz6NWNeVo5/gLQlRAiQ5jan7akOiaYn
         oAyZCcPwMBQv0cQnLlbe5KQgD8yhgUuzyDd+msCt+2J+XqPTNm5+zNn1dJg80a5oct48
         Wzig==
X-Gm-Message-State: AKS2vOxwMC+YCb5iDCddvSuxLsjhIp9JZj9k4R0OIa+FOT2ME7l6qTI5
	Tig3qhnFoiYecqesPrRmgw==
X-Received: by 10.36.77.9 with SMTP id l9mr8678330itb.95.1497584132117;
        Thu, 15 Jun 2017 20:35:32 -0700 (PDT)
References: <q9GnziJFIgpS6F561_2bPEQXnRjUmAK7A5jNWRzfrN-eWZA531SMyZwbld9orzTcGJdxW5dZyoQntvNWC2hxkHqIVVuXVswje5AAQALTfNY=@protonmail.com>
Message-ID: <3a481763-0461-fca6-72d3-15c3bbe1120f@redhat.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <q9GnziJFIgpS6F561_2bPEQXnRjUmAK7A5jNWRzfrN-eWZA531SMyZwbld9orzTcGJdxW5dZyoQntvNWC2hxkHqIVVuXVswje5AAQALTfNY=@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
Date: Thu, 15 Jun 2017 21:35:29 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Do I have to inform someone about CVE?
To: oss-security@lists.openwall.com

When you have a CVE the simple rule is:

If you got it publicly the CNA (CVE Numbering Authority) you got it from
should have published it to their upstream (e.g. MITRE).

If you got it embargoed and it's now public you should tell the CNA you
got it from that it is public, and ideally also tell MITRE
(https://cveform.mitre.org/).

Rule of thumb is: when it goes public, tell the issuer, and/or MITRE so
they can publish it.


On 2017-06-15 6:02 PM, Qhdwns123 wrote:
> Hi.
>
> I received a CVE.
>
> Do I have to inform someone about CVE?
>
> Thanks.

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

