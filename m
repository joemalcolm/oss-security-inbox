X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["658" "Tuesday" "19" "November" "2019" "13:41:36" "-0500" "Nathan Gough" "thenatog@apache.org" "<CAEhjM2B+ETHZVMTjQfiDXAkFN4TTygM6HzQb7WEpdG5_9O=oOg@mail.gmail.com>" "21" "[oss-security] [CVE-2019-12421] Apache NiFi 'Log out' button did not completely log user out" nil nil nil "11" "2019111918:41:36" "[oss-security] [CVE-2019-12421] Apache NiFi 'Log out' button did not completely log user out" (number mark "U       thenatog@apa Nov 19   21/658   " thread-indent "\"[oss-security] [CVE-2019-12421] Apache NiFi 'Log out' button did not completely log user out\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12421] Apache NiFi 'Log out' button did not completely log user out" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14055 invoked by uid 550); 19 Nov 2019 19:22:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31772 invoked from network); 19 Nov 2019 18:41:59 -0000
X-Gm-Message-State: APjAAAUFttLWN24pWTSZHDCoBOI4D3cUvgJZKOCg5drUfIEA7iYLMDs4
	CJuTWJfrmKyN7I6gGuyBMUbddlify4fFIDN7noY=
X-Google-Smtp-Source: APXvYqxxuQyskMizez07PJKDYKIzFynkY5RnQ7fHO4grIQHQBkDo6D7BPZFufoL+Cep/zRzayGouOEGgdttaa38Kpes=
X-Received: by 2002:a92:168b:: with SMTP id 11mr24940680ilw.39.1574188907573;
 Tue, 19 Nov 2019 10:41:47 -0800 (PST)
MIME-Version: 1.0
From: Nathan Gough <thenatog@apache.org>
Date: Tue, 19 Nov 2019 13:41:36 -0500
X-Gmail-Original-Message-ID: <CAEhjM2B+ETHZVMTjQfiDXAkFN4TTygM6HzQb7WEpdG5_9O=oOg@mail.gmail.com>
Message-ID: <CAEhjM2B+ETHZVMTjQfiDXAkFN4TTygM6HzQb7WEpdG5_9O=oOg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000a53b730597b76a35"
Subject: [oss-security] [CVE-2019-12421] Apache NiFi 'Log out' button did not completely log
 user out

--000000000000a53b730597b76a35
Content-Type: text/plain; charset="UTF-8"

[CVEID]:CVE-2019-12421

[PRODUCT]:Apache NiFi

[VERSION]:Apache NiFi 1.0.0 to 1.10.0

[PROBLEMTYPE]:Authentication

[REFERENCES]:https://nifi.apache.org/security.html#CVE-2019-12421

[DESCRIPTION]:As reported by Abdu Sahin, when using an authentication
mechanism other than PKI, when the user clicks Log Out in NiFi versions
1.0.0 to 1.9.2, NiFi invalidates the authentication token on the client
side but not on the server side. This permits the user's client-side token
to be used for up to 12 hours after logging out to make API requests to
NiFi.

--000000000000a53b730597b76a35--
