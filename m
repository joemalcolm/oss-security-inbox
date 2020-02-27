X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3201" "Thursday" "27" "February" "2020" "23:38:34" "+0200" "Jouni Malinen" "jkmalinen@gmail.com" nil "77" nil "^Date:" nil nil "2" nil nil (number mark "        jkmalinen@gm Feb 27   77/3201  " thread-indent "\"Re: [oss-security] Hostapd fails at seeding PRNGS, leading to insufficient entropy (CVE-2016-10743 and CVE-2019-10064)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Hostapd fails at seeding PRNGS, leading to insufficient entropy (CVE-2016-10743 and CVE-2019-10064)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22178 invoked by uid 550); 27 Feb 2020 21:39:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22157 invoked from network); 27 Feb 2020 21:39:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=4OOHJb9OcGiXQwMLiFAW0vZnhUh3eIplITwbkG9p9/k=;
        b=OLRFI0q0v82bQDjmXTjaPAALZL6iuNIVU6uZ4WL8OiQBm0UNjhyVDU9gs2yRiG/XNl
         4eJhtc9Ir0tn1boDEwXN+C+O7KGDu+uB6Hqjk3f2k6jVgaeP32L35L0qniTNYTGc/Y19
         Wlpobmd4aD30I8svRXXl+Kmwy+JpILmlif8PEqUwAW4/AX+aAwWUjyZWjFkeJtZKF6+2
         QAuXDiQPRUTbaZTeCTozVBe/pEu+JOMIN9qY8I+cqAS5DW0g72+tMMapZHJ5q1bnjiOA
         8SVXtUCyZGFUDmRdoxsqfaeZ/Kys/93KNedcO42rGPUeJL0P7XnhwIpq6scHo+lVTaeU
         yL7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=4OOHJb9OcGiXQwMLiFAW0vZnhUh3eIplITwbkG9p9/k=;
        b=jU6vl4fv0YKhhIC0zQzlmS4Md0o8x8aZSpGwqrREy8YXFptvRyX4tdduFfz0LRoeTR
         CKdn+56blPxYH4ssyxi++/iW/PLq0lg+7WEer+5Eq+g4z4i56y8DNJ3YDsRhtPqBD+kI
         x6UMsWHDcKDDQ9+tbEW1DcLyW+xXUocnyjxzNlkCGfYSR3MAKXE6JRZujbgRxFxKl7Fo
         kKOKn29fMA+NPZ/ZuhdlYKT65ojdBzHGTueTdG98+ybijARghPML5wtqAJXbucZM3Bs3
         JszGoslLzZ8Rfs0wliSxO0hPwvS5cK/VJmxtg4DRfuStpLgL43R7OsyIXGbUTNn2Yvxo
         Eg5g==
X-Gm-Message-State: ANhLgQ2N4nCk46rK+RbTJhpllbCa2q0iSHwit/2KAcoUZWbrdb6b7Uf4
	uW02tKtXepeNOrcN6IfRdrEInrzhHXL1+q4Bi1PMjDZu
X-Google-Smtp-Source: ADFU+vtKg74c3fsmRS6bQcNuVoSx0wCY5Ug4U6gdbWJ6ysAePYeNpjSWupheaHFe81C4nADn55UcYe2cOOSkgigVjRE=
X-Received: by 2002:a67:f6c8:: with SMTP id v8mr868642vso.147.1582839561984;
 Thu, 27 Feb 2020 13:39:21 -0800 (PST)
MIME-Version: 1.0
References: <4c04f877-a0e6-c536-7e2a-588728a0f63b@gmail.com>
In-Reply-To: <4c04f877-a0e6-c536-7e2a-588728a0f63b@gmail.com>
Message-ID: <CANe27jJkn2X0s0EL7QQL6xE5B=wEYJ=4aX0w5A-C-y+Fd_s+ow@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000d41e35059f958d51"
Date: Thu, 27 Feb 2020 23:38:34 +0200
From: Jouni Malinen <jkmalinen@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Hostapd fails at seeding PRNGS, leading to
 insufficient entropy (CVE-2016-10743 and CVE-2019-10064)
To: oss-security@lists.openwall.com

--000000000000d41e35059f958d51
Content-Type: text/plain; charset="UTF-8"

On Thu, Feb 27, 2020 at 6:24 PM Jonathan Brossard <endrazine@gmail.com>
wrote:

> ----------------------------------------------------------------------
> *               Hostapd fails at seeding PRNGS,                      *
> *               leading to insufficient entropy                      *
> ----------------------------------------------------------------------


It should be noted that this is referring to an old release from 2016 and
pointing to a repository that is an ancient snapshot of the actual project
development repository, i.e., not discussing what is in the real
development tree or recent releases.

--[ Vulnerabilities Summary:
>
> Date Published: 27/02/2020
> CVE Names: CVE-2016-10743 and CVE-2019-10064.
> Title: Hostapd fails at seeding PRNGs
> Class: CWE-331: Insufficient Entropy
> Remotely Exploitable: Yes
> Locally Exploitable: No
> Impact: Remote network access, remote Denial of Service
> Advisory URL: https://moabi.com/advisories/CVE-2019-10064.html


IMHO, those claims for impact are highly questionable.

It has been discovered that hostapd before version 2.6 wasn't seeding
> PRNGs at all.
> This vulnerability has been fixed silently around 2016, but never
> attributed a CVE
> number, leading to many distributions and IoT devices still shipping
> this version of
> the software. This vulnerability has been given id CVE-2016-10743.
> In some configurations, when WPS is enabled and a /dev/urandom device
> isn't available,
> this leads to WPS PINS being predictable, allowing remote network access
> from an attacker.
>

This is very unlikely to be hit in any realistic system using WPS. hostapd
used /dev/urandom to generate the WPS PIN if explicitly requested by upper
layer management software to enable a random PIN. The insecure random() use
would be reachable only if the device did not have a working /dev/urandom.
Furthermore, use of a random WPS AP PIN is not common deployment model (PIN
value from an upper layer software or manufacturing time configuration was
used more commonly).

Claiming this to result in remote network access is going pretty far. And
that change of removing the fallback mechanism for the broken /dev/urandom
case is a reasonable improvement in being more defensive in security
related functionality, but claiming this to be a silent fix for a
vulnerability is not accurate.


> In addition, it has been discovered that the Extensible Authentication
> Protocol (EAP) mode,
> which offers a protection against flooding attacks, also uses
> predictable PRNGs. This
> vulnerability has been assigned id CVE-2019-10064.
>

This is referring to the EAP-pwd server functionality in hostapd. The
particular value in question is the anti-clogging token value which is
defined in RFC 5931 as "MUST be unpredictable and SHOULD NOT be from a
source of random entropy" and the author of that implementation (and the
protocol designer) was explicitly documenting the used LFSR to be
sufficient for the particular use. That said, all recent releases of
hostapd are using /dev/urandom -based values for this as well.

- Jouni

--000000000000d41e35059f958d51--
