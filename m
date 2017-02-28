X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["690" "Tuesday" "28" "February" "2017" "17:20:34" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170228162034.qlety2rdz2skpomr@eldamar.local>" "22" "[oss-security] Linux: irda: Fix lockdep annotations in hashbin_delete() (CVE-2017-6348)" nil nil nil "2" "2017022816:20:34" "[oss-security] Linux: irda: Fix lockdep annotations in hashbin_delete() (CVE-2017-6348)" (number mark "U       carnil@debia Feb 28   22/690   " thread-indent "\"[oss-security] Linux: irda: Fix lockdep annotations in hashbin_delete() (CVE-2017-6348)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20055 invoked by uid 550); 28 Feb 2017 16:20:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20018 invoked from network); 28 Feb 2017 16:20:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=alXLOBaxsWKC0A9H+XIpAyhDDtRvk1HCIBwRK7RmZx0=;
        b=RfTPeHQI+d/fT12NGBINBA5N66cGl5VxTYbEPF8n5EJwJBnlmJXyY+PK0ObuUvhcQl
         PlqR75GaLK4wFuzKCve8QRKYGxrhnWAfOChMJ/ua3HrcDavZbrJpxQL94cBra2FYqwdW
         ReN/yh9i2GJ1UghxcdfNRE4ihx3pwLTa1pRSgRUKuJCn8nhqgE7qMeg3gUl076hVDc0P
         Xufe/p0rPP8P1PVrkbEp6E0VXVbNU+oiBVWjox4Mj4Ro+XKPtBBPK8I2uv9jVEHDuE3n
         v8cHnKehoithlZTfwTF6ilcXA0rsfSDwuwk8TGs6SNdevm5PrcKFnQIEGYm8+yYDxtD6
         ftDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=alXLOBaxsWKC0A9H+XIpAyhDDtRvk1HCIBwRK7RmZx0=;
        b=pq/uRDuyjrwlt2pELjDITqtuKNIH7fhnXHW5PPm7R3k4OHO9xOwmT+LS+Z4/xR8Lgq
         VEdNGeU8+xk4DU4RZP9YsvHttSQ0jmX2KQ8tKJXjG0sY82joZPavUbul70CXpzIUjNBY
         DfeeCI9wPpsb36vuQiB5+0+8hgp9Y/EWClM4mvD/UVTf80lEhSr8NmzQMOxaxd2H3LJ3
         irgxzUtxlim3kCXAqem34s+hjkM+Se6HPFgT7VwTyFDsotPERqntUEmr1ysZyky1UmMT
         L5ErhWjV37kdKLZFhs3lyZNXfxOK+7ri/uu8gp2Vs9EeSIJrvDPzSyIHJpc/bpgPq0q9
         GJPw==
X-Gm-Message-State: AMke39k5+oUtwDxJrGzE3EUYwcnXMM3fN8YLBru0U4UJ/mDdy3/y23RRO9LpVqY0waPaPw==
X-Received: by 10.223.138.134 with SMTP id y6mr3078546wry.118.1488298835944;
        Tue, 28 Feb 2017 08:20:35 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 28 Feb 2017 17:20:34 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Message-ID: <20170228162034.qlety2rdz2skpomr@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] Linux: irda: Fix lockdep annotations in hashbin_delete()
 (CVE-2017-6348)

Hi

CVE-2017-6348 was assigned by MITRE to the following (via
https://cveform.mitre.org/):

https://git.kernel.org/linus/4c03b862b12f980456f9de92db6d508a4999b788

> irda: Fix lockdep annotations in hashbin_delete().
> 
> A nested lock depth was added to the hasbin_delete() code but it
> doesn't actually work some well and results in tons of lockdep splats.
> 
> Fix the code instead to properly drop the lock around the operation
> and just keep peeking the head of the hashbin queue.

Quoting a note from Ben Hutchins: "This actually changes locking, not just
lockdep annotations. So I think it fixes a potential deadlock."

The fix was as well backported to 4.9.13.

Regards,
Salvatore
