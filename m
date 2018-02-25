X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["910" "Sunday" "25" "February" "2018" "12:32:32" "+0100" "Sebastien Briquet" "sbriquet@apache.org" "<CAAJwaYXXm-xmzik1chHH6a-w=YU3+awo1tZBvcvr47TtRVUGpQ@mail.gmail.com>" "28" "[oss-security] [ANNOUNCE] CVE-2017-15719 - Wicket jQuery UI: XSS in WYSIWYG Editor" nil nil nil "2" "2018022511:32:32" "[oss-security] [ANNOUNCE] CVE-2017-15719 - Wicket jQuery UI: XSS in WYSIWYG Editor" (number mark "U       sbriquet@apa Feb 25   28/910   " thread-indent "\"[oss-security] [ANNOUNCE] CVE-2017-15719 - Wicket jQuery UI: XSS in WYSIWYG Editor\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19559 invoked by uid 550); 25 Feb 2018 13:55:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18329 invoked from network); 25 Feb 2018 11:32:49 -0000
X-Gm-Message-State: APf1xPD0uESCEYzopub1rNpz5wM+XpsERxig6BokzS3PJwxlVjBlXwJL
	mrnjZPaWbL8NjMVum2CqtuNousmSm3HqfgCtygQ=
X-Google-Smtp-Source: AG47ELvtPwNBe6+kh3mpmFD8ZGzROr5komoy4bIDoC4/uG2uMWPH203hGqKNDkpZ7JkRaeY3+Zro30XdJv/Fam2OOUQ=
X-Received: by 10.200.25.239 with SMTP id s44mr11925798qtk.57.1519558353379;
 Sun, 25 Feb 2018 03:32:33 -0800 (PST)
MIME-Version: 1.0
From: Sebastien Briquet <sbriquet@apache.org>
Date: Sun, 25 Feb 2018 12:32:32 +0100
X-Gmail-Original-Message-ID: <CAAJwaYXXm-xmzik1chHH6a-w=YU3+awo1tZBvcvr47TtRVUGpQ@mail.gmail.com>
Message-ID: <CAAJwaYXXm-xmzik1chHH6a-w=YU3+awo1tZBvcvr47TtRVUGpQ@mail.gmail.com>
To: users@wicket.apache.org
Cc: Apache Security Team <security@apache.org>, oss-security@lists.openwall.com, 
	Sahil <sdhar@securityinnovation.com>
Content-Type: multipart/alternative; boundary="001a11481446de7182056607bf9d"
Subject: [oss-security] [ANNOUNCE] CVE-2017-15719 - Wicket jQuery UI: XSS in WYSIWYG Editor

--001a11481446de7182056607bf9d
Content-Type: text/plain; charset="UTF-8"

CVE-2017-15719 - Wicket jQuery UI: XSS in WYSIWYG editor

Severity: High
Versions Affected: <= 6.28.0, <= 7.9.1, <= 8.0.0-M8

Artifacts Affected:

   - wicket-jquery-ui-plugins (
   com.googlecode.wicket.jquery.ui.plugins.wysiwyg.WysiwygEditor)
   - wicket-kendo-ui (com.googlecode.wicket.kendo.ui.widget.editor.Editor)

Description: A security issue as been discovered in the WYSIWYG Editor that
allows an attacker to submit arbitrary JS code to WYSIWYG editor.

All users are recommended to upgrade to the latest version (6.29.0, 7.10.1,
8.0.0-M9.1)
The issue was fixed in 6.28.1, 7.9.2, 8.0.0-M8.1

Credit: The issue has been identified in Apache OpenMeeting by Sahil Dhar
(Security Innovation Inc)

References:
https://github.com/sebfz1/wicket-jquery-ui/wiki#cve-2017-15719---xss-in-wysiwyg-editor

--001a11481446de7182056607bf9d--
