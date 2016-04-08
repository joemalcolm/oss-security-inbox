X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["768" "Friday" "8" "April" "2016" "11:09:55" "+0800" "xiong piaox" "yahoo860201@gmail.com" "<CAA0JNpS5KzKvug_xPubFpbfj-7SMBhKj_-jXzJRfGFCx8fYdGA@mail.gmail.com>" "34" "[oss-security] [CVE-2016-3971]DotCMS xss vulnerability" nil nil nil "4" "2016040803:09:55" "[oss-security] [CVE-2016-3971]DotCMS xss vulnerability" (number mark "U       yahoo860201@ Apr  8   34/768   " thread-indent "\"[oss-security] [CVE-2016-3971]DotCMS xss vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32324 invoked by uid 550); 8 Apr 2016 03:10:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30282 invoked from network); 8 Apr 2016 03:10:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc;
        bh=u3WbWEnMT8lcnwJQ9A9OcjgH8qg8r6JdU0rRCUfcw9k=;
        b=W3m44vrdIUUwIH2rTUtVYnu7rPldbfeoE2J0mFCCxoc8SXC9M/DB/9rrvXzmkYl4xo
         E53jvTR3ihpFFXx5d4zEtLyoFqewuvoMqwKX8L7EbL+3+55T1DV7uNnVc4uqZkOksZJU
         3lK/iGLwBeLdoWnvA3DV4EdsEhuWyhkuijQucgw94+0aivdaZ3O598Dn7O5yapVU9dL7
         aBHMz1hmaC/xkPNa0486kA3r2xHBlE9uMnOuCsNdqp9tT024S3dPaFPefsZZm0pQAiXL
         Bgl9wASsyAKobeOA5RL0xgPZl5H43IFH7HxTyf1iGmWwpMDZXoYppbMRgpnEQKzfSofh
         RuGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc;
        bh=u3WbWEnMT8lcnwJQ9A9OcjgH8qg8r6JdU0rRCUfcw9k=;
        b=LH/SY916fmr0BPVINkz2DyeqtBuzytmIyfzikVRV6FdTGDE1jpbGj/WokKF/45Fnml
         rbBL4+Z3MaM+mF4rVUEAy7C4fl4W6Rk7pp3VjzieXcLFCbpaXXkat5EdgD0FL3IDT04J
         QaSI8JeoEBk7psauKWC4Bk8emsmbN6sHqv48WqlRnfJ6kBwj01IpWE9RpZ8J9v9xy9d8
         2PdMs+CojWCTDeDYOz6F44N74a7SjFFKgZxBP9QF2E+qGfxQI8lFi/euk058n7yT4Q7r
         prxswce3w9jp9lm92a1n3YU9I+hwEzg/n9/xp9VqCGyCSqPc0cIbkEvRkvOarL5NDTYg
         mXvQ==
X-Gm-Message-State: AD7BkJLpW+ODgOhjgptIfRTPxtiizZqO1ZNOIUNP2kpk5Tc45Xx55Ia6yy9RwykoPRwrNkodMP2CXBVdKL+6AQ==
MIME-Version: 1.0
X-Received: by 10.129.35.6 with SMTP id j6mr3934116ywj.133.1460084995460; Thu,
 07 Apr 2016 20:09:55 -0700 (PDT)
Date: Fri, 8 Apr 2016 11:09:55 +0800
Message-ID: <CAA0JNpS5KzKvug_xPubFpbfj-7SMBhKj_-jXzJRfGFCx8fYdGA@mail.gmail.com>
From: xiong piaox <yahoo860201@gmail.com>
To: fulldisclosure@seclists.org
Cc: bugs@securitytracker.com, bugtraq@securityfocus.com, 
	oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11429e687f14f7052ff087a0
Subject: [oss-security] [CVE-2016-3971]DotCMS xss vulnerability

--001a11429e687f14f7052ff087a0
Content-Type: text/plain; charset=UTF-8

Advisory: DotCMS xss vulnerability

Author: Piaox From Pingan Product Safety Group

Email: xiongyaofu351@pingan.com.cn

Affected Version: dotCMS 3.5 Beta(the latest version)


Vulnerability Description

lucene_search.jsp

 26 String query = request.getParameter("query");

 27 if(!UtilMethods.isSet(query)){

 28         query = "";

 29 }

164                 <div><strong><%= LanguageUtil.get(pageContext,
"Query-is") %> : </strong><%=query%></div>

POC && EXP

http://127.0.0.1:8080/c/portal/layout?p_l_id=a8e430e3-8010-40cf-ade1-5978e61241a8&p_p_id=EXT_LUCENE_TOOL&p_p_action=0&

query=%3Cscript%3Ealert%281%29%3C%2Fscript%3E&offset=0&limit=20&sort=&userid=

--001a11429e687f14f7052ff087a0--
