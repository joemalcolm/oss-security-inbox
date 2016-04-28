X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3900" "Thursday" "28" "April" "2016" "10:33:02" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQuKknmR6bZHKM2-G0Yb+P7hnJe7NkdRQkFthMpN5thpw@mail.gmail.com>" "82" "[oss-security] CVE requests: DoS in librsvg parsing SVGs with circular definitions" "^Date:" nil nil "4" "2016042808:33:02" "[oss-security] CVE requests: DoS in librsvg parsing SVGs with circular definitions" (number mark "        gustavo.grie Apr 28   82/3900  " thread-indent "\"[oss-security] CVE requests: DoS in librsvg parsing SVGs with circular definitions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32357 invoked by uid 550); 28 Apr 2016 08:33:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32330 invoked from network); 28 Apr 2016 08:33:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=anlhkpE5EbUEiX2TQBudX8L3EOE+zgIgm18xlVX+sSc=;
        b=knXaGFJOl0QIuKo5UNvG7o6J8Wci2SmpzD/Lu9jMHueP5ndtLWFDWgoGm9vLDUQPDV
         QRRlrc1Mca9U4RXuf/cDlB2T00h3T8dcFZyocj/O25n4r9VL6BtXj78wTmdkdd7jsJL/
         k08v6IpCP7uknFQjvMJ9deGZB066mPtGCXdOcVLLhX1mFHJ0VcRw+JpvDFcbUAvnE5i9
         NwaIocfz/MlPyqOYgk9/B5+sxPLM8iWhUnZ+6Jmn2qORusv7it9AVPjhNPvrUYhPwRDD
         qf2h9UPTh0TqHkv89g9y5Z3q9OEx9JKWXHtLQmp1O1SfWC5k/4HttYwHo/GOU6UY7vPS
         qBtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=anlhkpE5EbUEiX2TQBudX8L3EOE+zgIgm18xlVX+sSc=;
        b=Jx3H5jHGAPOgP7bx7C6sEDosSBvPSHZnSXvY3SghJCKAbSrMbSmXM7HsAYxiRJuH8D
         XORKl94COiqgX1SgLM9EePJAOj0bKEuoEOXfgCFnifighBSH869K5/DvN7X9JNUOZCIJ
         sX3q6Fbp6WMGutDD+EuLYLSLLKMBkyrVuhvSz4yye06KtipjyOizsFY0U/pH6zgRzHKF
         UV5q5kpCSWxzfCqE5dPxFvl/dk14nUk4SmjSTehVLHjbciVT4Cwa1oXlPGrXYNFWyK2Q
         SPHUoOAse2JkUU0qQrwnfZL1TLevnKIIvYa/EICkeME07HL9AH+hu0KQ71PyAVC6INkC
         9UeQ==
X-Gm-Message-State: AOPr4FVJ/rUKn0rU9n0N2XSV2XZbAGICQV8CGG6PgZpZvYxVqymAhl/KLuLJxyhwfvnCPrG2vQLtX3I4wg9kHg==
MIME-Version: 1.0
X-Received: by 10.25.165.135 with SMTP id o129mr5687219lfe.162.1461832382669;
 Thu, 28 Apr 2016 01:33:02 -0700 (PDT)
Message-ID: <CACn5sdQuKknmR6bZHKM2-G0Yb+P7hnJe7NkdRQkFthMpN5thpw@mail.gmail.com>
Content-Type: multipart/mixed; boundary=001a113f1d68e4093e0531875f4f
Date: Thu, 28 Apr 2016 10:33:02 +0200
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE requests: DoS in librsvg parsing SVGs with circular definitions
To: oss-security@lists.openwall.com

--001a113f1d68e4093e0531875f4f
Content-Type: multipart/alternative; boundary=001a113f1d68e409380531875f4d

--001a113f1d68e409380531875f4d
Content-Type: text/plain; charset=UTF-8

Hello,

Two DoS in librsvg 2.40.2 parsing SVGs with circular definitions were found
(they will produce stack exhaustion). Other versions can be vulnerable too.
They affect the following functions:

* rsvg_cairo_pop_discrete_layer - rsvg_cairo_pop_render_stack -
rsvg_cairo_generate_mask: reproducible using circular-1.svg
* _rsvg_css_normalize_font_size: reproducible using circular-2.svg

Both reproducers are attached in a tar.gz to avoid a crash in my own
browser.  Fortunately, these issues are solved in the last git revision of
librsvg2.

Regards,
Gustavo.

--001a113f1d68e409380531875f4d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br><br></div><div>Two DoS in librsvg 2.40.2 pa=
rsing SVGs with circular definitions were found (they will produce stack ex=
haustion). Other versions can be vulnerable too. They affect the following =
functions:<br><br>* rsvg_cairo_pop_discrete_layer - rsvg_cairo_pop_render_s=
tack - rsvg_cairo_generate_mask: reproducible using circular-1.svg<br>* _rs=
vg_css_normalize_font_size: reproducible using circular-2.svg<br><br></div>=
<div>Both reproducers are attached in a tar.gz to avoid a crash in my own b=
rowser.=C2=A0 Fortunately, these issues are solved in the last git revision=
 of librsvg2.<br></div><div><br></div><div>Regards,<br></div><div>Gustavo.<=
br></div></div>

--001a113f1d68e409380531875f4d--

--001a113f1d68e4093e0531875f4f
Content-Type: application/x-gzip; name="circulars.tar.gz"
Content-Disposition: attachment; filename="circulars.tar.gz"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ink13j020

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
nJYMkOuq2CtteR2v43V8u/EnKLF8rQAYAAA=

--001a113f1d68e4093e0531875f4f--
