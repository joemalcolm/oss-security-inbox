X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["272" "Monday" "4" "January" "2016" "00:24:41" "+0100" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSbgx9CwoHb6Cfd2mZNU8-+vtfaN4FW2MRM_bVBFFPOQQ@mail.gmail.com>" "12" "[oss-security] use-after-free in tidy-html5" nil nil nil "1" "2016010323:24:41" "[oss-security] use-after-free in tidy-html5" (number mark "U       gustavo.grie Jan  4   12/272   " thread-indent "\"[oss-security] use-after-free in tidy-html5\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8119 invoked by uid 550); 3 Jan 2016 23:24:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8082 invoked from network); 3 Jan 2016 23:24:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=qXDlJkIIQgHB05ltQ+RPaGOdVudKX81F07/cXF6qlgE=;
        b=X7zCN+aNdi44v/6WFhB18J3dz680hMjpmU90gWV2gKLAn9fKAYbVCgz4kYW/+ItW82
         rIJiqKyE3EMVfzqQc0pNwSJPfH8corc6zo5ypucbcIzRXwczhpnO5DLh2vRlBBJi3iN0
         6IwFzct8qnhmVhUavCeyPH7OMwH6pm8lSBQVwpLI58qPYFeMS1MD+D2IoOLzDERNwIFi
         3Aj8L9SK5QKIKWB/JRoxFyRVYmrrkx4MzyehyUO8lZ4Ot1Z+KDe3DH3mdSG+XL5iwz3f
         COu26S8ZHaIXJxa33FR+NelKuHHMtTF/JARDxJz+0sXeNegQadlzmNkKHtbQR9R7vKFf
         TTfQ==
MIME-Version: 1.0
X-Received: by 10.112.235.71 with SMTP id uk7mr25277824lbc.39.1451863481723;
 Sun, 03 Jan 2016 15:24:41 -0800 (PST)
Date: Mon, 4 Jan 2016 00:24:41 +0100
Message-ID: <CACn5sdSbgx9CwoHb6Cfd2mZNU8-+vtfaN4FW2MRM_bVBFFPOQQ@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11c3c5c21732ea0528764f50
Subject: [oss-security] use-after-free in tidy-html5

--001a11c3c5c21732ea0528764f50
Content-Type: text/plain; charset=UTF-8

A use-after-free was discovered in tidy-html5 (5.1.25) using afl. Technical
details are available here:

https://github.com/htacg/tidy-html5/issues/341

Regards,
Gus

--001a11c3c5c21732ea0528764f50--
