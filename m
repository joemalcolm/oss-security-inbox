X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["732" "Thursday" "26" "January" "2017" "13:31:55" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20170126123155.fquerqnvgz7frque@lorien.valinor.li>" "22" "[oss-security] CVE Requests: libgd: potential unsigned onderflow, denial-of-service in gdImageCreateFromGd2Ctx and signed overflow in gd_io.c" nil nil nil "1" "2017012612:31:55" "[oss-security] CVE Requests: libgd: potential unsigned onderflow, denial-of-service in gdImageCreateFromGd2Ctx and signed overflow in gd_io.c" (number mark "U       carnil@debia Jan 26   22/732   " thread-indent "\"[oss-security] CVE Requests: libgd: potential unsigned onderflow, denial-of-service in gdImageCreateFromGd2Ctx and signed overflow in gd_io.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15674 invoked by uid 550); 26 Jan 2017 12:32:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15650 invoked from network); 26 Jan 2017 12:32:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0kwgt/JQjm+l9XLE49e/8MJ//ZMwSxHpfhldHObEJwI=;
        b=fihmTJ1JuJ4cE5bgBz3r4mFumvXQ88tb1DWwk7EidROqRqsVHBFDlgHHKhx+K5GlGn
         Lv+p0uiWVvelaK1wRvREObb6URFtOWUwP9a2H8RGe5S3JSNMQHykypaDT2KJdMBxegux
         2S08oH2yG4rR2X1BS9tRqXSIipk8hgyD7S7EVbzGXh8096gZsdfDDxdJ8Nn4cqANjgI8
         ehmUAG/IpuEX/c4SM1rnYHsZczy5m7wULTXC+sjh9NDUfjDP0L1n2zdacGEjcY9NnxH0
         neQSkLXorvaC7FxkNwDtQOxuGyE9C5jZbD4xO4LBMbrVbLC/BBFz0A9200haofkIxq83
         aE8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=0kwgt/JQjm+l9XLE49e/8MJ//ZMwSxHpfhldHObEJwI=;
        b=Q8UyAN9m7PMmkMKOa0goJfMe8OvaL43N6Xw+NJYVoChe699ikENG3ImC+nvVhIsq36
         5u43m+HjREIUhZkHKLVwPyq63iAX9+OgOrVtBQ/Lxfy6uNxih6eveJ5jLhReCYXOS4M9
         76ltRvOHyiGlshlIw/Tx39DgWRNJJR2uNMyKjyp4Ri0odPEiqy2PQmL95r9/V4rF5fOh
         tjgw4bmq0w4BBXFaqR4F3Slrn/7gbSzSI4X453xqdxQSO9ZcDIDXQsVfeaJhlMlcjJqA
         VDMOB3Vbc/JTksfEZoNcwjAx1RwcwvEJWpkCUV2rLKot5/daQMUW5J6odvYUVsJDcbzr
         qm6A==
X-Gm-Message-State: AIkVDXJxVV5dm883boFkbbmzGlgFgMb1x1cc0N0roWgB5349ADRfKbvSKwBpPyZLNqFL6w==
X-Received: by 10.107.150.10 with SMTP id y10mr2336089iod.221.1485433918058;
        Thu, 26 Jan 2017 04:31:58 -0800 (PST)
Message-ID: <20170126123155.fquerqnvgz7frque@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Date: Thu, 26 Jan 2017 13:31:55 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] CVE Requests: libgd: potential unsigned onderflow, denial-of-service
 in gdImageCreateFromGd2Ctx and signed overflow in gd_io.c
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

[I'm collecting the request in one mail, although maybe I should have
splitted up, apologies for that].

libgd fixed some issues in the git repositories, for which the
following three does not seem to have CVE ids:

1/ Fix potential unsigned underflow
Commit: https://github.com/libgd/libgd/commit/60bfb401ad5a4a8ae995dcd36372fe15c71e1a35

2/ Fix DOS vulnerability in gdImageCreateFromGd2Ctx()
Commit: https://github.com/libgd/libgd/commit/fe9ed49dafa993e3af96b6a5a589efeea9bfb36f

3/ Fix #354: Signed Integer Overflow gd_io.c
Commit: https://github.com/libgd/libgd/commit/69d2fd2c597ffc0c217de1238b9bf4d4bceba8e6
Issue: https://github.com/libgd/libgd/issues/354

Could you please assign CVE id's for those?

Regards,
Salvatore
