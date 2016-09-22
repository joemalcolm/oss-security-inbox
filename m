X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1132" "Thursday" "22" "September" "2016" "11:37:40" "+0800" "=?UTF-8?B?546L55WF?=" "fyth.cnss@gmail.com" "<CAFkM3a+tCC+PgnDtQ8HEvz3CNp_7C4Tmr8NxomgpznGpBKnkUw@mail.gmail.com>" "40" "[oss-security] CVE Request: XSS Vulnerability in Exponent CMS 2.3.9" nil nil nil "9" "2016092203:37:40" "[oss-security] CVE Request: XSS Vulnerability in Exponent CMS 2.3.9" (number mark "U       fyth.cnss@gm Sep 22   40/1132  " thread-indent "\"[oss-security] CVE Request: XSS Vulnerability in Exponent CMS 2.3.9\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30552 invoked by uid 550); 22 Sep 2016 03:41:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29980 invoked from network); 22 Sep 2016 03:37:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=qeRfN+a2M0Kcyj2/opiwgXbncu7HAJumpZLgVX0phi8=;
        b=ICK83E7xiK+P8WS+Hb/cTelVKS5GtY/dYmtuRegWbWapN27uC38PAd4zwUgh0PNCab
         Oi/IKRJ2An2cqNknAU/XGAbOmTR39BFJtwrK+zsxoars62LBXB5LeKf+oiicDFfVRNsC
         +UN/7KbeFSBjpGDeEbMNWT6/FeNiC6CS0HnDby2OjI1L7EIOGl2kFdLQ33bPCUcH2Td2
         VGmXixMalIDnzhY9h+g1JYR5aZKhJkNpBGi/7AbzS1PZ/cGqrEa7fiOBTcYHxhm1WGJ/
         orZJ3h5RuBwBfz3rQoWa9Ikpg2fCBKMpASOx3gfp/hVstulnrJjPEZTXPELlZ+so5C5j
         YBEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qeRfN+a2M0Kcyj2/opiwgXbncu7HAJumpZLgVX0phi8=;
        b=jKZU5sMFqc7kOZTJO0IpNRxg8rRCIMz3ivf6T7xTAefkmQ/vSWVL724sBgvK7j2UlC
         KEYZUNqnM1dCwxGR9lLuZZ5Uj/2U12cgAkUWKGf89SikrpgG0ZeegcIaWYf4ZsnNsBHL
         4xy4uO/UAaNDjGOmdXS0pMttm2gRCE5YhZsljx1mJVAyLDMbj4WyyZf8eRFtgpJcPpkD
         Kk+8HybTCtbG57CSwAl2cVavLl3aqc+uNoXtkN/iYz1UecQ5dwaa7M1SnV0mLrGb7hdM
         GZRjQrNMxRHOQi+dIYDcKZOk7z9gqcZnMJ4keMQ3bEuCCbmv6kRlFxGX3/dTQDvynE1v
         1ncA==
X-Gm-Message-State: AE9vXwN2T/rpF7UxZY2U8TUqBZ2VfAtXNjDdz/eD1mTwQq2Jab3K/7x+fWAVwEfdmpAZZFEAdLq++UPzc9mx0A==
X-Received: by 10.194.143.104 with SMTP id sd8mr34798293wjb.161.1474515461371;
 Wed, 21 Sep 2016 20:37:41 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?546L55WF?= <fyth.cnss@gmail.com>
Date: Thu, 22 Sep 2016 11:37:40 +0800
Message-ID: <CAFkM3a+tCC+PgnDtQ8HEvz3CNp_7C4Tmr8NxomgpznGpBKnkUw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=089e0122f3584a7ca9053d1062d6
Subject: [oss-security] CVE Request: XSS Vulnerability in Exponent CMS 2.3.9

--089e0122f3584a7ca9053d1062d6
Content-Type: text/plain; charset=UTF-8

Hi, I reported a Cross Site Scripting vulnerability to the
ExponentCMS team on a few days ago:
vulnerability:


/framework/modules/file/connector/uploader.php

line 85-86:
```

$funcNum = $_GET['CKEditorFuncNum'] ;
echo "<script type='text/javascript'>window.parent.CKEDITOR.tools.callFunction(".$funcNum.",
'".$url."', '".$message."');</script>";

```

"$_GET['CKEditorFuncNum']"  was printed out without any sanitization.


PoC:http://exponentcms.org/framework/modules/file/connector/uploader.php?CKEditorFuncNum=[removed]<svg/onload=alert(1)>


And Now, this vulnerability have been
fixed.https://exponentcms.lighthouseapp.com/projects/61783/changesets/3f06b07755f35b96eff05ed3e3e1df2b907cade1

https://github.com/exponentcms/exponent-cms/commit/3f06b07755f35b96eff05ed3e3e1df2b907cade1


This issue was reported by Wang Chang of silence.com.cn Inc. and I would like
to request a CVE for this issue (if not done so).

Thank you.
---------------------------------http://www.silence.com.cn
wangchang#silence.com.cn
PKAV Team

--089e0122f3584a7ca9053d1062d6--
