X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1717" "Sunday" "22" "March" "2015" "20:19:00" "+0100" "Kristian Fiskerstrand" "kristian.fiskerstrand@sumptuouscapital.com" "<550F15A4.8020904@sumptuouscapital.com>" "45" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032219:19:00" "[oss-security] CVE for Kali Linux" (number mark "        kristian.fis Mar 22   45/1717  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550F01FF.1010208@redhat.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F01FF.1010208@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13661 invoked by uid 550); 22 Mar 2015 19:19:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13641 invoked from network); 22 Mar 2015 19:19:13 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-type
         :content-transfer-encoding;
        bh=yNG0DjSVsZndf9LPsAWE8+mQamdxknD224xomSYAwWw=;
        b=GJCMphb5xEf/3le2WCd1Aa9wBXS1L8KKfbsbXPkZyigIB23u4cTA2OgxM42/CiLTZm
         LaD74VjLYvuQWiLZIXgb5FAlV8HTeYrk6pORY3qBqTTDcFXbBnedllYqHk504x4RM1xl
         Tg96I3Akghx0oiAlkqj315a8ez5/5996ogxwVMNLDP7oTwo6/Awxzr9ua1/zKc1TASr7
         ASTUS0BronoUosiCBYaYYZtANv1rA5cdDkjH28Eq8yUMprimYxW8npT98fyMiI26vNDd
         V99Yku1xLgIaULP4pdVg2n3lmCGkGwxeKKFO9p+KFyIqos9xoWiGByqcZJfugzmX/v3X
         ZqVA==
X-Gm-Message-State: ALoCoQn4uzqnR1KUqVJaSOCiseAqhkUhuIpC8WhsRfxiD/I2MyNK5TVwJ7LdV6VDj9aire+bXjt5
X-Received: by 10.152.43.201 with SMTP id y9mr80224821lal.25.1427051942556;
        Sun, 22 Mar 2015 12:19:02 -0700 (PDT)
Message-ID: <550F15A4.8020904@sumptuouscapital.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <550EE478.70005@redhat.com> <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com> <20150322172300.GA21110@openwall.com> <550F01FF.1010208@redhat.com>
In-Reply-To: <550F01FF.1010208@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Sun, 22 Mar 2015 20:19:00 +0100
From: Kristian Fiskerstrand <kristian.fiskerstrand@sumptuouscapital.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

On 03/22/2015 06:55 PM, Kurt Seifried wrote:
> 

...

> The problem is to do this you need some key/shared
> secret/verifiable secret, e.g. a GPG key. How do I get the GPG key
> securely?

The same way as for bootstrapping key validity using OpenPGP , in the
absence of a direct verification path a probabilistic trust model can
be used, mainly. The package being signing using the same key over
time signifies that it is coming from authoritative source (unless
you've been MITMed a long time), the fingerprint of the OpenPGP key
should be included in email announcements and other documents that are
being mirrored by multiple sources, reducing the likelihood of a MITM
if corresponding information is the same in multiple archives over a
long time. Its always better to have a direct validation path to the
key in question, but all is not in vein without it.


- -- 
- ----------------------------
Kristian Fiskerstrand
Blog: http://blog.sumptuouscapital.com
Twitter: @krifisk
- ----------------------------
Public OpenPGP key 0xE3EDFAE3 at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3
- ----------------------------
Aquila non capit muscas
The eagle does not hunt flies
-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJVDxWhAAoJEP7VAChXwav6dBMIAIi/1dMykJO58oL0yFUZmU95
x+zhzrmPepuOJcJb1WEPzU3LZvf+fQYS+c4YivG95MA7u4ljWcW55BJYZd5+AIMM
6emwg1mFuqenEMby8zFCDYyLardM4GODifhPXDE9LF6YoJ26m1twPWWMXcioWioO
vNMrQoaTNdpR4jkNX8FGUm5/hDS8iM+BDiT5qjQ3INz3/x0pnVg2pjxjNBuV6CkZ
PTGVrwVXT9uxrgw4XkF+59/IS/weWrNUSnFoNRuTBseNXor5jjrSRY1W010yLVX3
+leeB6wTVmfTuBxbl5T9pCtd6Xv4fq8fL5KILppsUyLa1STDXlnPz3o/x+ukPxc=
=AT4h
-----END PGP SIGNATURE-----
