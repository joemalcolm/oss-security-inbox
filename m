X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1153" "Thursday" "12" "January" "2017" "20:44:12" "+0530" "Dileep Kumar" "dileep.chinu@gmail.com" "<CAPjdKBx8U9iX5WfSyPG5AAnODMdJGfKuS713kok3RpFCM1f6kw@mail.gmail.com>" "39" "[oss-security] CVE Request: MUJS null pointer dereference and Heap buffer overflow write" nil nil nil "1" "2017011215:14:12" "[oss-security] CVE Request: MUJS null pointer dereference and Heap buffer overflow write" (number mark "U       dileep.chinu Jan 12   39/1153  " thread-indent "\"[oss-security] CVE Request: MUJS null pointer dereference and Heap buffer overflow write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3388 invoked by uid 550); 12 Jan 2017 15:16:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1973 invoked from network); 12 Jan 2017 15:14:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=1qt3f/ZRbSJxm+a86c0x+kKigX8r8mVWnyjdkaOdse8=;
        b=fhgUe/+/bZlwxhldcOsXbkccRrvWsg82frvSt2O1Pbs7PdRX495tmsNoyEET+jNNLn
         a2BK5mqRW55yXGNLDwnZezmXgLy+23t7DDUDQep4xi9yJC0GqCCdV2tdpZCYYh1BGi/q
         XFEoK8yPZLT7cAgbWu3M5kmrpN4+vY8I0aEOtZxCH/uxs9Kr0fr13O86R80eCvHtcNE3
         99HdWp57kCEEOTaWrGIy1iJRU1PTnGMR93A1iSmJrXqG8OeRrN9dXAXc0pMcFZ42jiSo
         y+hYJp6Z4VNWdLDTJLW3NbJEgM9loQQEHg8Itc7gExs2pH3fyFDEtKsxgxiEwiXOcV7f
         p87g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1qt3f/ZRbSJxm+a86c0x+kKigX8r8mVWnyjdkaOdse8=;
        b=rD0W3Ry7dcvX3XqA8J0NLVquNTAWrnv9rM7H02V7IjxDa5LOfm7F4FUXfsD+cSlarl
         irYR8dZO/IkavVkfcnM11oEjzCVRg/4WXmc6hRUzAsXXlQoVBYyNM+oX05862rqSt3Cg
         W1PuelT/BbrqTijKGxR4B4MEGpG/+wtEnphN4DLkrYRw/tkVA0iMfXt0DkblOU6G7Jmb
         Kwh1x9Hp0cL+ucghW3B9rnD4kBHCQw9e3jzfPSQCKHfPl4UxfACC7ibnx18LrdONU4oH
         V2L+rESyefOqBTdkFjlm8pw+z9CLucHMuKAcx3NYlG8F1R0l9gX0SMYqoEgmtTFOvpNB
         TQlg==
X-Gm-Message-State: AIkVDXJj7BbpMHRGxtkiw6CNossJtfhYFCrm0OhZkE/I9ZuThyShhJhZZX4AtuPLYsL2KWONXttTvEXSJNzVCg==
X-Received: by 10.55.11.130 with SMTP id 124mr13282761qkl.27.1484234052695;
 Thu, 12 Jan 2017 07:14:12 -0800 (PST)
MIME-Version: 1.0
From: Dileep Kumar <dileep.chinu@gmail.com>
Date: Thu, 12 Jan 2017 20:44:12 +0530
Message-ID: <CAPjdKBx8U9iX5WfSyPG5AAnODMdJGfKuS713kok3RpFCM1f6kw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114d73ca797e190545e72bd0
Subject: [oss-security] CVE Request: MUJS null pointer dereference and Heap buffer overflow write

--001a114d73ca797e190545e72bd0
Content-Type: text/plain; charset=UTF-8

Hi,

The details of the two bugs found in MUJS (https://github.com/ccxvii/mujs)
are as follows :

1. Null pointer dereference in regexp.c

    The return value from malloc is not properly checked before
dereferencing it which can result in a crash.

     More details on the bug in the bug report at:
     https://bugs.ghostscript.com/show_bug.cgi?id=697381

     This has been fixed by the MUJS team in the commit:
http://git.ghostscript.com/?p=mujs.git;h=fd003eceda531e13fbdd1aeb6e9c73
156496e569

2. Heap buffer overflow write in jsrun.c: js_stackoverflow()

    There was a logical error in the code which can be used to trigger a
heap overflow write.

    More details on the bug in the bug report at:
    https://bugs.ghostscript.com/show_bug.cgi?id=697401

    The same has been fixed by the MUJS team in the commit:
http://git.ghostscript.com/?p=mujs.git;a=commit;h=
77ab465f1c394bb77f00966cd950650f3f53cb24

Both bugs are found by Dileep Kumar Jallepalli using AFL. Please kindly
assign CVEs if suitable.

Thanks,
Dileep Kumar Jallepalli

--001a114d73ca797e190545e72bd0--
