X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2314" "Friday" "6" "May" "2016" "00:18:24" "+0530" "Nitin Venkatesh" "venkatesh.nitin@gmail.com" "<CAARZ5vpwcDbDCynB-8RUGZ07PodZF9hd2ctVddYG97+xaEiCbw@mail.gmail.com>" "70" "[oss-security] CVE-2016-1236 - XSS Vulnerability in websvn 2.3.3-1.2+deb8u1" nil nil nil "5" "2016050518:48:24" "[oss-security] CVE-2016-1236 - XSS Vulnerability in websvn 2.3.3-1.2+deb8u1" (number mark "U       venkatesh.ni May  6   70/2314  " thread-indent "\"[oss-security] CVE-2016-1236 - XSS Vulnerability in websvn 2.3.3-1.2+deb8u1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14310 invoked by uid 550); 5 May 2016 18:48:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14291 invoked from network); 5 May 2016 18:48:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=kPZayqGl1jUDmohS3xhxJeMCkKsn1xMFFLz82RgHJV4=;
        b=YIQPRCAonwBPDKfO18SP8/THd2mTB8sAgG2u/cvJ9ghuQHBwGAREcAI7HjufCat7ml
         nSNK7GJLeTOT3laxfP4OLEROhhboKiDHUAFvF8FHBE8z5oqOKmlL3UZqstlywXxb2Uvt
         X15RzMYl7npGbxm0aRbg804neEh1/+wfjhIg8xPqZ3lk5hhyGBwLFWruX6tu+N9J1viV
         jSHjHu8w47hf9GHHSTMh2rSzY7jZJgXDuLaqtbW6Y/GMElGQUXpzrbYvznDQfFTWU5xU
         5XOY7v3Jg34RpyikjrRKDkKGhdvLpMXpSFrZZay7b11HSH8cLuF4YMRZHaG3Q6teHgie
         sxbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=kPZayqGl1jUDmohS3xhxJeMCkKsn1xMFFLz82RgHJV4=;
        b=k3rQzpYC1SNJ/P215VisnXI+vr+7MOmEoU8IPluzebwV1TkZhjIX+33DJQFkqDvgc8
         4LNsAHj4pKzDVWS4+oQnRb9xl1nHWENpJ3xsOmV14oUdcxwo3Hf74m2xBPOa2as/Xsyn
         L8369Mq2Kf6d0zd6SyE+c0s07zNo5/aoGZ7WbSd5Ekc22FSn+uunY10JfzPy+kGLeHZL
         N7MIhfN3mXtFH+4w1fmYHe/IXe/UwX+lSFMwZGSDld0ACc0QnPayMfErISnDOcRJTieF
         xMwXBWGEO7U1xOeNJhqeaH/j+U3J+2ESgrJgxUqRd7reRCygRf/9l93dDrKrzS2gcLw5
         fuEA==
X-Gm-Message-State: AOPr4FX56zxOhGHQ0gh8+AZOQULQ1ryu/E368fSOF0CzvhA3d51oZuiqcaR0M63g0EWt6eKRe12SHzP2QhtM0w==
MIME-Version: 1.0
X-Received: by 10.107.152.85 with SMTP id a82mr18160091ioe.46.1462474104147;
 Thu, 05 May 2016 11:48:24 -0700 (PDT)
Date: Fri, 6 May 2016 00:18:24 +0530
Message-ID: <CAARZ5vpwcDbDCynB-8RUGZ07PodZF9hd2ctVddYG97+xaEiCbw@mail.gmail.com>
From: Nitin Venkatesh <venkatesh.nitin@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114079ae78f37305321cc906
Subject: [oss-security] CVE-2016-1236 - XSS Vulnerability in websvn 2.3.3-1.2+deb8u1

--001a114079ae78f37305321cc906
Content-Type: text/plain; charset=UTF-8

# Summary:
Vulnerability Type: Cross-site Scripting (XSS)
Package: websvn
Version: 2.3.3-1.2+deb8u1
CVE: CVE-2016-1236

# Description:
Having a directory or file in a repository with its filename containing a
XSS payload will cause it to be executed in various parts of the
application.

# Steps to reproduce the issue:
1. Clone a SVN repo that websvn has access to
2. Create a directory/file with its filename containing the XSS payload,
for example, "><img src=x onerror=alert(1)>
3. Add and commit the changes (new directory/file).
4. The payload is executed, when browsing the repository using websvn in
the browser.

# Suggested Patches:
Please use at your own discretion, the following patches might not solve
the issue entirely.
The escape() function used in the suggested patch was written by the
original developer and can be found in the include/command.php file.

revision.php - Modified
L148:
+ 'path' => escape($change->path)
- 'path' => $change->path,

log.php - Added
L326-328:
+ $listing[$index]['revadded'] = escape($listing[$index]['revadded']);
+ $listing[$index]['revdeleted'] = escape($listing[$index]['revdeleted']);
+ $listing[$index]['revmodified'] = escape($listing[$index]['revmodified']);

listing.php - Modified
L126:
+ $listing[$index]['filename'] = escape($file);
- $listing[$index]['filename'] = $file;

L140:
+ $listing[$index]['compare_box'] = '<input type="checkbox"
name="compare[]" value="'.escape($path.$file).'@'.$passrev.'"
onclick="checkCB(this)" />';
- $listing[$index]['compare_box'] = '<input type="checkbox"
name="compare[]" value="'.$path.$file.'@'.$passrev.'"
onclick="checkCB(this)" />';

comp.php - Modified
L384:
+ $listing[$index]['newpath'] = escape($absnode);
- $listing[$index]['newpath'] = $absnode;

# Events Timeline:
2016-04-29 - Discovered vulnerability
2016-04-29 - Reported to Debian Security Team
2016-04-30 - Acknowledgement received from Debian Security Team
2016-05-01 - CVE-2016-1236 assigned to the issue
2016-05-05 - Disclosing issue on oss-sec mailing list as advised

# Disclaimer:
Please use the information presented above responsibly, at your own
discretion. I will in no way be responsible for how this information is
used or misused.

--001a114079ae78f37305321cc906--
