X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["922" "Friday" "30" "September" "2016" "14:54:20" "+0800" "Carl Peng" "felixk3y@gmail.com" "<CAEiFw0URs1e9oVb-Jzh3qDe-bOyEVJo7iL3Bx0YFSTFK9FRB-A@mail.gmail.com>" "34" "[oss-security] CVE request: b2evolution 6.7.6 Object Injection vulnerability" "^Date:" nil nil "9" "2016093006:54:20" "[oss-security] CVE request: b2evolution 6.7.6 Object Injection vulnerability" (number mark "U       felixk3y@gma Sep 30   34/922   " thread-indent "\"[oss-security] CVE request: b2evolution 6.7.6 Object Injection vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7304 invoked by uid 550); 30 Sep 2016 13:29:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27798 invoked from network); 30 Sep 2016 06:54:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=/KJClajwMYehL8N1kGrX+ZVTxGSmlOFYrf+fbQwb46E=;
        b=iL6RmoL+MSbCgfdIswBafmSpTT+D816Y0q1nKN5sp5PU/NWMysAlhQ6yOKeNsVrc3Z
         QDPe9Y9yI462HWAYw10GrjoT0wj/MFw4CFWH3xdjbQOLNpfn0XknFsZlLHNBqZjThZAU
         fQu0P4snQlNUR4I8uZecU7HLoM5wW1Yx1mBUARn9EMnex5nyqYjlkDFqqBvVaq6UFtTx
         eQv61mFjJg+EuO7Pwlth+TxSY9uyXAo8X5PbGThBf0wNj4UsQ/dANrYuS0E0/uwy0ZRi
         TZ/Z3yBd6Tm+z1qjrDQMcpryCDtc6PZPNUlM08izxMhbSbHkDytMp5Xp4bCyhLirLAIg
         8feg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/KJClajwMYehL8N1kGrX+ZVTxGSmlOFYrf+fbQwb46E=;
        b=Tg8Aas3qHOfYiwzCc/aw4jw511DIB00+5kYb0fUpeiysmHQzLhVsXO1aGfzqpg430+
         V3GJOCKyvTy/Vb6raGN8GZQi/psj207uSFsUNSfC+Si5vCZT0sbFdwPeBQHEKaK1Dms0
         VdmkOqAG8GcGR9hrKCPG/uZuPGxOKbGllviW2lzAn5iQ6nIPYNKo93lsQ7OeFJCGdMKw
         RrbjO/rXmxtz/D01nLi5RnrJveuCSuP6W3HzRoY5TstbQkgNja2BJmkKN3GPagDumtUo
         dm4dYO9CKD5svFLSlrD8gzJdgYdFY/r7dG/VFM16H79ffUuRpy0I/IakUSO9xEB5avPG
         76BA==
X-Gm-Message-State: AA6/9RnMJvRa9aKgoYB/T13wU/E3YCPuJN0712IK1XlXyXPnpkT/1fWJRvzim3LXZ0a4nPwiY36CzN1eBtMOLg==
X-Received: by 10.28.62.2 with SMTP id l2mr2468753wma.117.1475218460563; Thu,
 29 Sep 2016 23:54:20 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAEiFw0URs1e9oVb-Jzh3qDe-bOyEVJo7iL3Bx0YFSTFK9FRB-A@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1148ef624ee01a053db410db
Date: Fri, 30 Sep 2016 14:54:20 +0800
From: Carl Peng <felixk3y@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: b2evolution 6.7.6 Object Injection vulnerability
To: oss-security@lists.openwall.com

--001a1148ef624ee01a053db410db
Content-Type: text/plain; charset=UTF-8

hello,
 i reported a object injection vulnerability to b2evolution team, and now
it has been fixed.

Vulnerability:
/htsrv/call_plugin.php #lines 31~40
```
param( 'params', 'string', null ); // serialized
if( is_null($params) )
{ // Default:
$params = array();
}
else
{ // params given. This may result in "false", but this means that
unserializing failed.
$params = @unserialize($params); //object injection
}
```
The parameter of "params" may lead to Object Injection by sending
"params=serialized+object+here"
fixed:
https://github.com/b2evolution/b2evolution/commit/25c21cf9cc4261324001f9039509710b37ee2c4d

This issue was reported by Peng Hua of silence.com.cn Inc. and I would like
to request CVE for this issue (if not done so).

-------------------http://www.silence.com.cn/
penghua@silence.com.cn
PKAV Team

--001a1148ef624ee01a053db410db--
