X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2275" "Friday" "2" "October" "2015" "15:11:06" "+0200" "Kristian Fiskerstrand" "kristian.fiskerstrand@sumptuouscapital.com" "<560E826A.6060403@sumptuouscapital.com>" "62" "[oss-security] CVE request: OpenSMTPD 5.7.2" nil nil nil "10" "2015100213:11:06" "[oss-security] CVE request: OpenSMTPD 5.7.2" (number mark "        kristian.fis Oct  2   62/2275  " thread-indent "\"[oss-security] CVE request: OpenSMTPD 5.7.2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7284 invoked by uid 550); 2 Oct 2015 13:14:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7258 invoked from network); 2 Oct 2015 13:14:13 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
         :mime-version:content-type:content-transfer-encoding;
        bh=YgBwNFcol88Lt95a9nS4R4m8ZnIh4PtM0Zkl2xCC5ck=;
        b=LXj5ZryxVLc/aw1S0T4l3FyykeyYeVr5kZ4f91dH4kw+fobWEiI/v+d8cazui//97F
         k4f5txb+lgVzoboZDzPUdjreIBKP1HoINvkDdh1bKfaPhdKTHi3v2hWK9pE9Z1uJZA1D
         EcJv7Ou7zhRqbj+UBp+laP+aGYyj+mJuk5KqmaIDTJVAiX36RnvJCo3WgsgvzTpmdVqy
         EitVSEw5xnalbbppA+chN+i5A7iXrq9w4DWpMouStliTgb7ovftHmPXi0T69o5PCaRle
         OJx7glUfirJARJ94SXLQk2EZ3drlhldaPdvDV6YvSNeb5gg0EFrqReCe6W5VMRDe/E9Q
         UcIg==
X-Gm-Message-State: ALoCoQk9CqZZxJwXMiJwYIeowmeJ0b4+1SbBT+jsNgA8vw44NPHCiuNFy/unzKuYQfgEaLwxEFrX
X-Received: by 10.112.130.39 with SMTP id ob7mr5671596lbb.66.1443791642452;
        Fri, 02 Oct 2015 06:14:02 -0700 (PDT)
Message-ID: <560E826A.6060403@sumptuouscapital.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: cve-assign@mitre.org
Date: Fri, 2 Oct 2015 15:11:06 +0200
From: Kristian Fiskerstrand <kristian.fiskerstrand@sumptuouscapital.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: OpenSMTPD 5.7.2
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Dear all,

OpenSMTPd announced version 5.7.2 today[0] listing the following
issues, if CVEs have not been requested for these issues already,
might some be assigned, please?

Issues fixed in this release (since 5.7.1):
===========================================

- - an oversight in the portable version of fgetln() that allows attackers
  to read and write out-of-bounds memory;

- - multiple denial-of-service vulnerabilities that allow local users to
  kill or hang OpenSMTPD;

- - a stack-based buffer overflow that allows local users to crash
  OpenSMTPD, or execute arbitrary code as the non-chrooted _smtpd user;

- - a hardlink attack (or race-conditioned symlink attack) that allows
  local users to unset the chflags() of arbitrary files;

- - a hardlink attack that allows local users to read the first line of
  arbitrary files (for example, root's hash from /etc/master.passwd);

- - a denial-of-service vulnerability that allows remote attackers to fill
  OpenSMTPD's queue or mailbox hard-disk partition;

- - an out-of-bounds memory read that allows remote attackers to crash
  OpenSMTPD, or leak information and defeat the ASLR protection;

- - a use-after-free vulnerability that allows remote attackers to crash
  OpenSMTPD, or execute arbitrary code as the non-chrooted _smtpd user;


References:
[0] https://www.opensmtpd.org/announces/release-5.7.2.txt

- -- 
- ----------------------------
Kristian Fiskerstrand
Blog: http://blog.sumptuouscapital.com
Twitter: @krifisk
- ----------------------------
Public OpenPGP key 0xE3EDFAE3 at hkp://pool.sks-keyservers.net
fpr:94CB AFDD 3034 5109 5618 35AA 0B7F 8B60 E3ED FAE3
- ----------------------------
"Excellence is not a singular act but a habit. You are what you do
repeatedly."
(Shaquille O'Neal)
-----BEGIN PGP SIGNATURE-----

iQEcBAEBCgAGBQJWDoJmAAoJECULev7WN52FwIUIAJFWaOhKmNNJ8Pj0dqf96kIx
sn4oZG/iD8oJn/KjNDoAVCilujxJ7NV8gWMzNqHRVUwGkEcfAmkfmfJjsKpr24ZE
m9fWP82k36WPaLl9kM4arL2PeWEDEooOpjiAgE5Jj+pfoONU4MU9yDTeAmsSx5Zt
UC0dZILlTBNFGg7Dxl9wzZhkTlgTq5ukx9j+5LKUzF3QlOixj0+uqOqxX+iz+Cny
3kDDmvEYA/79kIMpnao609ntrWg3NCRTFm6EK38XidncI+NqYSF2Vt3TBcm8Beqg
GicW+itboy3305PFXWrZOJSg7/wxG7wJnw9NWZj2Dz2buCJ1sRir8KUaecqQpqA=
=7++X
-----END PGP SIGNATURE-----
