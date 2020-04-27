X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["652" "Monday" "27" "April" "2020" "15:41:01" "-0400" "Nathan Gough" "thenatog@apache.org" "<CAEhjM2Bg=HG5+qfTL8T9nEOkezHgtPzEipCqfLXOVG-ostLNNA@mail.gmail.com>" "20" "[oss-security] [CVE-2020-9482] Apache NiFi Registry user log out issue" nil nil nil "4" "2020042719:41:01" "[oss-security] [CVE-2020-9482] Apache NiFi Registry user log out issue" (number mark "U       thenatog@apa Apr 27   20/652   " thread-indent "\"[oss-security] [CVE-2020-9482] Apache NiFi Registry user log out issue\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-9482] Apache NiFi Registry user log out issue" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30690 invoked by uid 550); 27 Apr 2020 19:49:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21642 invoked from network); 27 Apr 2020 19:41:24 -0000
X-Gm-Message-State: AGi0PubRGN8o9K60w+T7VsrM4bSx+oSegaAU59mEslgwA74Zyq4SqXqY
	VcxwJBtOBG8nqnt+UleiFCGLwJIXtG63dlzwn00=
X-Google-Smtp-Source: APiQypIuUmAekeVXkxZM1ZNvUq6ziU72my4vRqCmnBHIu8ZeDhkZguR4E4XIuDtdiH/ehQiskLpKs4pA7pFFUrahhbk=
X-Received: by 2002:a5d:8b89:: with SMTP id p9mr22245621iol.107.1588016471774;
 Mon, 27 Apr 2020 12:41:11 -0700 (PDT)
MIME-Version: 1.0
From: Nathan Gough <thenatog@apache.org>
Date: Mon, 27 Apr 2020 15:41:01 -0400
X-Gmail-Original-Message-ID: <CAEhjM2Bg=HG5+qfTL8T9nEOkezHgtPzEipCqfLXOVG-ostLNNA@mail.gmail.com>
Message-ID: <CAEhjM2Bg=HG5+qfTL8T9nEOkezHgtPzEipCqfLXOVG-ostLNNA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000b29c1405a44ae539"
Subject: [oss-security] [CVE-2020-9482] Apache NiFi Registry user log out issue

--000000000000b29c1405a44ae539
Content-Type: text/plain; charset="UTF-8"

[CVEID]:CVE-2020-9482

[PRODUCT]:Apache NiFi Registry

[VERSION]:Apache NiFi Registry 0.1.0 to 0.5.0

[PROBLEMTYPE]:Authentication

[REFERENCES]:https://nifi.apache.org/registry-security.html#CVE-2020-9482

[DESCRIPTION]:If NiFi Registry uses an authentication mechanism other than
PKI, when the user clicks Log Out, NiFi Registry invalidates the
authentication token on the client side but not on the server side. This
permits the user's client-side token to be used for up to 12 hours after
logging out to make API requests to NiFi Registry.

--000000000000b29c1405a44ae539--
