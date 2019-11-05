X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["962" "Tuesday" "5" "November" "2019" "15:56:46" "+0000" "Colm O hEigeartaigh" "coheigea@apache.org" "<CAB8XdGDHWGFR=1E=trh_KqBH+4f08rdHqQdwgOEJX-fdoTzJkA@mail.gmail.com>" "25" "[oss-security] [CVE-2019-12419] Apache CXF OpenId Connect token service does not properly validate the clientId" nil nil nil "11" "2019110515:56:46" "[oss-security] [CVE-2019-12419] Apache CXF OpenId Connect token service does not properly validate the clientId" (number mark "U       coheigea@apa Nov  5   25/962   " thread-indent "\"[oss-security] [CVE-2019-12419] Apache CXF OpenId Connect token service does not properly validate the clientId\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-12419] Apache CXF OpenId Connect token service does not properly validate the clientId" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1677 invoked by uid 550); 5 Nov 2019 17:13:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30303 invoked from network); 5 Nov 2019 15:57:10 -0000
X-Gm-Message-State: APjAAAWjamQzZokIfZ/LmmPYVIucysxBlTVUWRUk6bjJqE1SL7KpFJYv
	VBUhEe1+ZOPRyka7a8bgqVvBGo/dIAmswlnQHa0=
X-Google-Smtp-Source: APXvYqxrINYZ7zNorxA0bH74Xl380+95LGtH0kkzVwHVP8b5NX5GO84KEacPTi9ZfSn2IGtB0eOiSChF0LH6jbfxm0I=
X-Received: by 2002:a02:c98e:: with SMTP id b14mr19734757jap.133.1572969417682;
 Tue, 05 Nov 2019 07:56:57 -0800 (PST)
MIME-Version: 1.0
From: Colm O hEigeartaigh <coheigea@apache.org>
Date: Tue, 5 Nov 2019 15:56:46 +0000
X-Gmail-Original-Message-ID: <CAB8XdGDHWGFR=1E=trh_KqBH+4f08rdHqQdwgOEJX-fdoTzJkA@mail.gmail.com>
Message-ID: <CAB8XdGDHWGFR=1E=trh_KqBH+4f08rdHqQdwgOEJX-fdoTzJkA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000006233ae05969b7b6e"
Subject: [oss-security] [CVE-2019-12419] Apache CXF OpenId Connect token service does not
 properly validate the clientId

--0000000000006233ae05969b7b6e
Content-Type: text/plain; charset="UTF-8"

[CVEID]:CVE-2019-12419
[PRODUCT]:Apache CXF
[VERSION]:Apache CXF versions before 3.3.4 and 3.2.11
[PROBLEMTYPE]:Apache CXF OpenId Connect token service does not properly
validate the clientId
[REFERENCES]:
http://cxf.apache.org/security-advisories.data/CVE-2019-12419.txt.asc
[DESCRIPTION]:Apache CXF provides all of the components that are required
to build a fully
              fledged OpenId Connect service. There is a vulnerability in
the access token
              services, where it does not validate that the authenticated
principal is equal
              to that of the supplied clientId parameter in the request.

              If a malicious client was able to somehow steal an
authorization code issued
              to another client, then they could exploit this vulnerability
to obtain an
              access token for the other client.

--0000000000006233ae05969b7b6e--
