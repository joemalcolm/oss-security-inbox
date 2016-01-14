X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["373" "Thursday" "14" "January" "2016" "14:32:07" "-0800" "Qualys Security Advisory" "qsa@qualys.com" "<20160114223207.GB30647@localhost.localdomain>" "11" "Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Cc:" nil nil "1" "2016011422:32:07" "[oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        qsa@qualys.c Jan 14   11/373   " thread-indent "\"Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<20160114181128.GD16572@netmeister.org>" ("<20160114171301.GH28298@localhost.localdomain>" "<20160114181128.GD16572@netmeister.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14289 invoked by uid 550); 14 Jan 2016 22:34:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14268 invoked from network); 14 Jan 2016 22:34:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qualys-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to;
        bh=pPNYF5zLZEL9G74r4onVSTOczxDZXPrmKIQA40ukoDM=;
        b=do+ISyoxXEMPQNyMG64CbGtHxo17odd1wjUAzyxjkt8rW/rkIOY+PlPexgloRAFi1N
         MYm/B1HLPCjpndyCuFJ2iYzAv02hOWzBvfG/y0AFyiw33MD943PACDdaq5aUd86Iw+dh
         lbZaGvcxzEOFSQFxfrNYXs8+0/osxeFgVTWABK+PUhfOpA+1yQeaNLgpvJGqKTHzANcV
         Q5t5v8cNVxx6OHyPT2YpmTcBrBtHHoxfMYR4NLMr8qXHrLOfsg8nUt0KhHmCYhPWyt2S
         IRwdQKawrXU1lUzTgwAp3eCsiDEZgeco2gePPgn6HfwqNNJSKQ+m96W9Ino2gaSliHlz
         9ukg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to;
        bh=pPNYF5zLZEL9G74r4onVSTOczxDZXPrmKIQA40ukoDM=;
        b=BGoF18W6jSBNIazPaF/YiLSwnbaTlnQJvjrAQWPPo3/iUx6QivJqaxi6vODlA3h2/O
         KHagJTTQpBpSUKuWV5iegwdyqKv82EP4/92xiwqO7Zq6UTI86prpf5u/OyEeGZ2JgYn3
         PLt78aPINxd+A8tHtoMkKYc//LeVyKWhcw6XIGyvxXDnVU7zNrr1XmWtK1QB+kAMPpdi
         /U0P3xSHDQfiYqOkv0HdKH8v+FY2Xrujort9XdBE7tyMgYI7NVzSf0gk8DyYy/FWmnpG
         BOc8OIYfdDDQdB6MAXuBYpBYE6wOd8lH33sM/KGciqa0X1M9UjY1YMRsz1F+qzk5/LSd
         l86w==
X-Gm-Message-State: ALoCoQmx+XGyX4o9hG9fZpKIicpkX5k88JnhiAEjQCxjh7lU7PlhlCuPLm7KajnZmpiqw7fLcks+ohwEzZ88vdlnqfJOVp+PMg==
X-Received: by 10.98.18.2 with SMTP id a2mr9889253pfj.145.1452810876064;
        Thu, 14 Jan 2016 14:34:36 -0800 (PST)
Message-ID: <20160114223207.GB30647@localhost.localdomain>
References: <20160114171301.GH28298@localhost.localdomain>
 <20160114181128.GD16572@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160114181128.GD16572@netmeister.org>
Cc: oss-security@lists.openwall.com
Date: Thu, 14 Jan 2016 14:32:07 -0800
From: Qualys Security Advisory <qsa@qualys.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - Roaming through the
 OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: Jan Schaumann <jschauma@netmeister.org>

On Thu, Jan 14, 2016 at 01:11:29PM -0500, Jan Schaumann wrote:
> Why is version 5.3 not affected?

The information leak is in resend_bytes() ["if (out_start < out_last)"
should be "if (out_start <= out_last)"], but in OpenSSH 5.3, there is no
call to resend_bytes(), at all (roaming_client.c does not even exist).

With best regards,

-- 
the Qualys Security Advisory team
