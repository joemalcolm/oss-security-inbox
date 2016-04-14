X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["600" "Thursday" "14" "April" "2016" "13:26:49" "-0400" "Naser Farhadi" "n4ser.farhadi@gmail.com" "<68AD5BF8-0B12-4F1E-8DE0-49E36A769AC3@gmail.com>" "22" "[oss-security] CVE request: OpenCart 2.1.0.2 to 2.2.0.0 - json_decode Function Remote Code Execution" nil nil nil "4" "2016041417:26:49" "[oss-security] CVE request: OpenCart 2.1.0.2 to 2.2.0.0 - json_decode Function Remote Code Execution" (number mark "U       n4ser.farhad Apr 14   22/600   " thread-indent "\"[oss-security] CVE request: OpenCart 2.1.0.2 to 2.2.0.0 - json_decode Function Remote Code Execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11334 invoked by uid 550); 14 Apr 2016 17:32:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7400 invoked from network); 14 Apr 2016 17:27:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:subject:message-id:date:to:mime-version;
        bh=BK0tRlHyNbSzKUvrwyDlgBGn9YUPTwL1otUyd0WO/4U=;
        b=0kVkRmoy2E/x1rnvA0K8tAhPvtz2in6oTdAp4xd0Qji4l/hI8hJ15yALwZ27qQZG2r
         4NkLabBZ8tHqCNTNNdTH0+YVjT6HIXvDgHY3H3/LlqLHUbigcgstD8pWcZIeVhU1+fGN
         tF723V4QxB7xPsWTJET/O/xvayBjq0UcTKi3ScECcRvVUDzNsXxcliA/e4utSwwtQman
         gdPZ43HNfd0S7oUr18mwQ2YLI3MR9dZV265ihTjAvgVNYrFLG+yE43mWPAMDkUGPd8q8
         yG43ynngboLMM2ZuNz5rhzd61WVckbGY2BD077su2eTsysnbRcKOXRvvhsd21iskbBRV
         w3XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:subject:message-id:date:to:mime-version;
        bh=BK0tRlHyNbSzKUvrwyDlgBGn9YUPTwL1otUyd0WO/4U=;
        b=aXM8aVbqsUHrFFNqIA3RMUdzoobveabFb6MnRfe3ro6bBhOd8G/WVAlVnzAiHtzXwC
         hq6xGiTlKwsFa6lcgA7SrQlXSWzLsOmIfExmM4MAmhUV41nzNYriwvRWJ2YUnhhKkbMq
         hgqBj59PJyWlhmUr7vldmHJUtujbTcwEs0IOJAxejHQivBK8Sn1VXMjCUdD0N1HsXcMU
         lyB0v2IfIaiA1V1rm1L0YK5kPXY2luDJxIQ5HCpSseZhCWj2PU/pAALfORPiIAhqqNyA
         1AyYKVzm6t/vbRsbvMraRTgxQM1IyW0fSuTzqOrkMnP8hChhazuCDwVY4Y7iwiS+YXDX
         FR7g==
X-Gm-Message-State: AOPr4FU1i9cccGRP3/mFAnPAwDmpYQpGNJ/iTXMqUvtZMeubPwsLljZUY0Us2WID4i5XNg==
X-Received: by 10.112.10.109 with SMTP id h13mr6966395lbb.58.1460654816642;
        Thu, 14 Apr 2016 10:26:56 -0700 (PDT)
From: Naser Farhadi <n4ser.farhadi@gmail.com>
Content-Type: multipart/alternative; boundary="Apple-Mail=_CF1CFDC4-4032-43B3-B154-7267C3DC7351"
Message-Id: <68AD5BF8-0B12-4F1E-8DE0-49E36A769AC3@gmail.com>
Date: Thu, 14 Apr 2016 13:26:49 -0400
To: oss-security@lists.openwall.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] CVE request: OpenCart 2.1.0.2 to 2.2.0.0 - json_decode Function Remote Code Execution

--Apple-Mail=_CF1CFDC4-4032-43B3-B154-7267C3DC7351
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi

OpenCart is prone to an remote code-execution vulnerability.

https://www.exploit-db.com/exploits/39679/ <https://www.exploit-db.com/expl=
oits/39679/>
http://seclists.org/bugtraq/2016/Apr/61 <http://seclists.org/bugtraq/2016/A=
pr/61>
https://github.com/opencart/opencart/issues/4220 <https://github.com/openca=
rt/opencart/issues/4220>

Could a CVE please be assigned to this issue?

Regards,
Naser=

--Apple-Mail=_CF1CFDC4-4032-43B3-B154-7267C3DC7351--
