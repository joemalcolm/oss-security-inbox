X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1298" "Tuesday" "30" "May" "2017" "07:51:13" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1496145073.1459.1.camel@gmail.com>" "29" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Cc:" nil nil "5" "2017053011:51:13" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        danielmicay@ May 30   29/1298  " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13770 invoked by uid 550); 30 May 2017 11:51:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13752 invoked from network); 30 May 2017 11:51:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tDq2pA0ChL/8dHzsU+gGNBBl/J67q3ETKKqYqx2qvjQ=;
        b=b9B6T/YLCN86IZbJFo4cZeCQJkqdoa5tGgN3E5cIXEH+I4JnkdiRyWuW6JnQcaSXK2
         AGbUwBZLpDGzXS7kJR08PBXgrb3bToX8BU8sA6Bg2xxiIy1urdclnCDWd24WvpjSjX87
         kQbDfQojrnESZn3GSvYGH77yjFh2pd6Gd7ApXZfm8arKy2FULyoyEV83CeUD4qJzUdQb
         unLzlDWl9C3cQwJpLk+5WnQhhJHsKfq6T447c2JqvXxm36ufUHRCOXZ7q8OExgr7v/Jd
         M2Z1tEoiyDfr2cKBOeB0hiaGeNVsQFd5aOLSYRxhnAQuP+2HdQdlLFZeIgo+vqc6Gwag
         ZM5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tDq2pA0ChL/8dHzsU+gGNBBl/J67q3ETKKqYqx2qvjQ=;
        b=SUUO/XnPRYpplPu/0wqnk7evDhRZWL6+u+pRRZk/Wqn92baPy8nP0ft6PVDgFMfqcD
         cy/o4yPtqZPeiV2ClEu/HRkxUBI5NQdFuqU9nslmEbbi0RSNlQgQgGIOj07TJR40PVSK
         /S7yBMseq9MJDAtSmqSheRyE/hsG2K3a8Xla1tLZf7XCluoTkAk+H9MmLzo8sfDG2eyS
         FZP/L3Eh6tWIq/s0eLOA0QEVw9SeoVS3NhWXy+cHc6/2V3qGFuZXX2niiw5bGL4mCdL+
         ZQBfrWp0wC5IuCf9Zw46Rl6kleSw8INe81w4bGG2gQhVNFe16MJPkEBKwC9SUiImBOG7
         KxcQ==
X-Gm-Message-State: AODbwcCLVyRqQtOqcngrsDHrsZ6kIXpiNxF9kUDfZTMi2gTprTpl8ZR/
	j12257tDFVsQxzA6deY=
X-Received: by 10.107.19.194 with SMTP id 63mr20378062iot.188.1496145075006;
        Tue, 30 May 2017 04:51:15 -0700 (PDT)
Message-ID: <1496145073.1459.1.camel@gmail.com>
In-Reply-To: <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
	 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Roee Hay <roeehay@gmail.com>
Date: Tue, 30 May 2017 07:51:13 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: oss-security@lists.openwall.com

On Tue, 2017-05-30 at 12:41 +0100, Simon McVittie wrote:
> On Tue, 30 May 2017 at 08:17:54 +0400, Ilya Matveychikov wrote:
> > When using get_options() it's possible to specify a range of
> > numbers,
> > like 1-100500. The problem is that it doesn't track array size while
> > calling internally to get_range() which iterates over the range and
> > fills the memory with numbers.
> 
> Is there a realistic way in which an attacker can provide Linux kernel
> command-line arguments, without being able to achieve arbitrary code
> execution via those command-line arguments?
> 
> In other words, is this a security vulnerability, or just a bug?
> 
> (If the attacker can already achieve arbitrary code execution then
> this bug does not give them any capability they do not already have.)
> 
>     S

It's unreasonable to consider the kernel line untrusted. A CVE being
issued for one of these issues didn't make sense.

If there's verified boot, it needs to cover the kernel command-line. If
it doesn't, that's a vulnerability. Memory corruption bugs aren't needed
for an attacker to make use of the kernel line.

Fixing these bugs makes sense, but treating them as vulnerabilities is
just going to turn off the Linux kernel developers to security people
even more since it's pretty much nonsense.
