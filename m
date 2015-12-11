X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1061" "Friday" "11" "December" "2015" "08:26:29" "-0800" "Reed Loden" "reed@reedloden.com" "<CALPTtNVT18A8p5Cxd8uK-TM1rMcNU9JuyXiepevKeVarrifYOA@mail.gmail.com>" "33" "[oss-security] CVE request: handlebars node.js module <4.0.0 - \"Quoteless attributes in templates can lead to XSS\"" nil nil nil "12" "2015121116:26:29" "[oss-security] CVE request: handlebars node.js module <4.0.0 - \"Quoteless attributes in templates can lead to XSS\"" (number mark "U       reed@reedlod Dec 11   33/1061  " thread-indent "\"[oss-security] CVE request: handlebars node.js module <4.0.0 - \"Quoteless attributes in templates can lead to XSS\"\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1851 invoked by uid 550); 11 Dec 2015 16:27:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1826 invoked from network); 11 Dec 2015 16:27:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=g9drLMtIcpsmkOxtTqKFUliyXpxnpwNIH6jQJAagoTQ=;
        b=CIELdnKOZ4diWW74fUFgL10Ig4ffwIca+wt/4huJKDMZOFykph2bAaCLlbUq2z7Zde
         nqu/WPcQ8kf/p2om4bF32EpDHD9eTaMKEeLcpuWWGiprqhIkZvzhGHtNW3aiv/mFnj33
         Aj8/I1BEqtTxrJkNsL2Kk4EyTKtFLsmVsiPI4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-type;
        bh=g9drLMtIcpsmkOxtTqKFUliyXpxnpwNIH6jQJAagoTQ=;
        b=Blhd91Dnn6bkPl3PPX/zE2Qjky1obZ7sVnVUn/GftdxGcy/Mv2Z1NcfZzFnjJvVYpj
         G2RjDm2jQMybXnUu1agatISdPN5odeYvqO1aSJBEu8WrhMHMOS4OiYoR4eVE3EfyxTpq
         bx0KYGgbtPMgntMddYednW50tl6YVqg1i2cxUu3G2wxjL1z6y+ymHNPFlN00BdfZHweW
         A963tcMp6cDB7XrhvhApgpNZ9+a23AXQO5SFcxefa6MZ5mLkMWha0FkZWBEEe92Kugda
         dHGvQ4Ed30xFwaHMkow1DDlTvoFZh7Gt4ubWXkl6ltie8T+2jw4JH3n7HJAKa3m04rz7
         OHvg==
X-Gm-Message-State: ALoCoQmaUXV85y5va+zFKAjq31Xg04+m1t4pfKiq+IJ2bIZtgicaszVYoPw5+c0uf7O776ZlmTXz22BmEHQiCcM+hXzkH0b0701a2HHD5BwBaROGvPKl2dQ=
X-Received: by 10.129.132.203 with SMTP id u194mr9491671ywf.22.1449851208401;
 Fri, 11 Dec 2015 08:26:48 -0800 (PST)
MIME-Version: 1.0
From: Reed Loden <reed@reedloden.com>
Date: Fri, 11 Dec 2015 08:26:29 -0800
Message-ID: <CALPTtNVT18A8p5Cxd8uK-TM1rMcNU9JuyXiepevKeVarrifYOA@mail.gmail.com>
To: oss-security@lists.openwall.com, 
	Assign a CVE Identifier <cve-assign@mitre.org>
Content-Type: multipart/alternative; boundary=001a114f0b464132000526a1cad7
Subject: [oss-security] CVE request: handlebars node.js module <4.0.0 - "Quoteless attributes
 in templates can lead to XSS"

--001a114f0b464132000526a1cad7
Content-Type: text/plain; charset=UTF-8

As seen on SRC:CLR --
https://blog.srcclr.com/handlebars_vulnerability_research_findings/

Blog post has all the details, but basically the handlebars node module is
missing some characters in its escaping mechanisms, allowing for possible
XSS.

Handlebars "provides the power necessary to let you build semantic
templates effectively with no frustration".

Node.js module: handlebars (https://www.npmjs.com/package/handlebars)
Affects: 3.0.3 and earlier
Fixed in: 4.0.0
Reported via https://github.com/wycats/handlebars.js/pull/1083
Fixed by
https://github.com/wycats/handlebars.js/commit/83b8e846a3569bd366cf0b6bdc1e4604d1a2077e
(note that the SRC:CLR blog post mentions an incorrect commit id for the
actual fix)

Can a CVE be assigned?

Note that this also affects many other Node.js and rubygems as well, as the
code was copy/pasted a lot. See also
https://github.com/janl/mustache.js/commit/378bcca8a5cfe4058f294a3dbb78e8755e8e0da5
.

Thanks,
~reed

--001a114f0b464132000526a1cad7--
