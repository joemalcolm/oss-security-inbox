X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7128" "Wednesday" "4" "April" "2018" "13:46:20" "-0500" "Michael Catanzaro" "mcatanzaro@igalia.com" "<1522867580.22588.1@mail.igalia.com>" "166" "[oss-security] WebKitGTK+ Security Advisory WSA-2018-0003" nil nil nil "4" "2018040418:46:20" "[oss-security] WebKitGTK+ Security Advisory WSA-2018-0003" (number mark "U       mcatanzaro@i Apr  4  166/7128  " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2018-0003\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15834 invoked by uid 550); 4 Apr 2018 18:48:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11796 invoked from network); 4 Apr 2018 18:46:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; s=20170329;
	h=Content-Type:MIME-Version:Message-Id:Cc:To:Subject:From:Date; bh=8e5cLIBfimRhJVkVuqbrDHmDW9srYB+gMoifL7CG+oE=;
	b=fzrnTNqbNk0AJ+/iEQlmD4zrsIB+QmKGWxRV2sq5xNzDdVVU+eXu8jN1IhvNTsB3JNAv/TrwL5HkYBygiVyOEvuggytiEG8gplBlO6nHHdyEkfPsTffpj32cBMwQ/cdGxdb/0kA+ozZ6QEHPs9uEFHTPiwo88gm3r+VLbNX1GyaDi4hAquxsJYLyj35V159V8vmOOzGPVSTAiM/2e0dL1iWNaF2ImVShl56Q+2wTHRNupMiD8SRQ6RNpZBwvVD54KB3YSymtOQqBF/zrQyEZ27cbciAdPS63HLQ1ZB91L0mNCb7rfcE1WZjRSnIU6X1f8SOG+RCIVuzUrkxqIBG2UA==;
Date: Wed, 04 Apr 2018 13:46:20 -0500
From: Michael Catanzaro <mcatanzaro@igalia.com>
To: webkit-gtk@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
	oss-security@lists.openwall.com, bugtraq@securityfocus.com
Message-Id: <1522867580.22588.1@mail.igalia.com>
X-Mailer: geary/0.12.1
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-AcHxR0l/V0LiPQB9S5JA"
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2018-0003

--=-AcHxR0l/V0LiPQB9S5JA
Content-Type: text/plain; charset=iso-8859-13; format=flowed
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory WSA-2018-0003
------------------------------------------------------------------------

Date reported : April 04, 2018
Advisory ID : WSA-2018-0003
Advisory URL : https://webkitgtk.org/security/WSA-2018-0003.html
CVE identifiers : CVE-2018-4101, CVE-2018-4113, CVE-2018-4114,
                     CVE-2018-4117, CVE-2018-4118, CVE-2018-4119,
                     CVE-2018-4120, CVE-2018-4122, CVE-2018-4125,
                     CVE-2018-4127, CVE-2018-4128, CVE-2018-4129,
                     CVE-2018-4133, CVE-2018-4146, CVE-2018-4161,
                     CVE-2018-4162, CVE-2018-4163, CVE-2018-4165.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2018-4101
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to Yuan Deng of Ant-financial Light-Year Security Lab.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4113
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to OSS-Fuzz.
    Impact: Unexpected interaction with indexing types causing an ASSERT
    failure. Description: An array indexing issue existed in the
    handling of a function in JavaScriptCore. This issue was addressed
    through improved checks.

CVE-2018-4114
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to OSS-Fuzz.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4117
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to an anonymous researcher.
    Impact: A malicious website may exfiltrate data cross-origin.
    Description: A cross-origin issue existed with the fetch API. This
    was addressed through improved input validation.

CVE-2018-4118
    Versions affected: WebKitGTK+ before 2.18.1.
    Credit to Jun Kokatsu (@shhnjk).
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4119
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to an anonymous researcher working with Trend Micro=FFs Zero
    Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4120
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to Hanming Zhang (@4shitak4) of Qihoo 360 Vulcan Team.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4122
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to WanderingGlitch of Trend Micro's Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4125
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to WanderingGlitch of Trend Micro's Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4127
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to an anonymous researcher working with Trend Micro=FFs Zero
    Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4128
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to Zach Markley.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4129
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to likemeng of Baidu Security Lab working with Trend Micro's
    Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4133
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to Anton Lopanitsyn of Wallarm, Linus S=E4rud of Detectify
    (detectify.com), Yuji Tounai of NTT Communications Corporation.
    Impact: Visiting a maliciously crafted website may lead to a cross-
    site scripting attack. Description: A cross-site scripting issue
    existed in WebKit. This issue was addressed with improved URL
    validation.

CVE-2018-4146
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to OSS-Fuzz.
    Impact: Processing maliciously crafted web content may lead to a
    denial of service. Description: A memory corruption issue was
    addressed through improved input validation.

CVE-2018-4161
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to WanderingGlitch of Trend Micro's Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4162
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to WanderingGlitch of Trend Micro's Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4163
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to WanderingGlitch of Trend Micro's Zero Day Initiative.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.

CVE-2018-4165
    Versions affected: WebKitGTK+ before 2.20.0.
    Credit to Hanming Zhang (@4shitak4) of Qihoo 360 Vulcan Team.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed with improved memory handling.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: https://webkitgtk.org/security.html

The WebKitGTK+ team,
April 04, 2018

--=-AcHxR0l/V0LiPQB9S5JA--

