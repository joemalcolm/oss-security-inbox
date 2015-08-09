X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1097" "Sunday" "9" "August" "2015" "15:50:10" "-0400" "=?UTF-8?B?RnJhbsOnb2lzIExhYnLDqGNoZQ==?=" "f.labreche@gmail.com" "<55C7AEF2.1070908@gmail.com>" "31" "[oss-security] CVE request - simple-php-captcha - captcha bypass vulnerability" nil nil nil "8" "2015080919:50:10" "[oss-security] CVE request - simple-php-captcha - captcha bypass vulnerability" (number mark "        f.labreche@g Aug  9   31/1097  " thread-indent "\"[oss-security] CVE request - simple-php-captcha - captcha bypass vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20244 invoked by uid 550); 9 Aug 2015 20:28:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24555 invoked from network); 9 Aug 2015 19:50:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :content-type;
        bh=6bswQe+6KKi1a45IVPFr4KdXB2GkN/hScKZlQcQI54g=;
        b=TdWzLvY8RP7GHAYT7Sf+U4+oygqeyNt1i5ncOX/WmTByz3tq8S7oCZ/wC/IJHRUoIe
         LBsJvpyDQbSt2aYkqm794YfhXQApa7CvPOhfMPz4+eNFoLAnlf1ISDj1GhoBxFpEfR8k
         aaBmztrPUhnyUogTGQE0RTfd6IPU56l8B5nnV00Uw3B1C6eo/K81yTeEoMyC3NIN80Cm
         wPr6x6CSX3HQ3fw0Gu1d3/aHs6kC/d8VwRMcQS/Y9FO9qZnSjErqT0eLxJk+RyBIh3SS
         Xw18irUYSo35auQlf9KcdcA6qiEBaJaoSlznGLztuU6TJlPRLCHcRGOAeHUXQPNxuKxh
         q82g==
X-Received: by 10.107.131.22 with SMTP id f22mr17296790iod.73.1439149812191;
        Sun, 09 Aug 2015 12:50:12 -0700 (PDT)
Message-ID: <55C7AEF2.1070908@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------060204070203060402010605"
CC: Olivier Bilodeau <olivier@bottomlesspit.org>
Date: Sun, 09 Aug 2015 15:50:10 -0400
From: =?UTF-8?B?RnJhbsOnb2lzIExhYnLDqGNoZQ==?= <f.labreche@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request - simple-php-captcha - captcha bypass vulnerability
To: oss-security@lists.openwall.com

--------------060204070203060402010605
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

We found a captcha bypass vulnerability in an open source captcha 
software, made by Cory LaViska for A Beautiful Site. Here is the github 
repository: https://github.com/claviska/simple-php-captcha.

We opened an issue on github 
<https://github.com/claviska/simple-php-captcha/issues/16>, and the 
vulnerability has been fixed. They never did any release so we don't 
think the fix will be released in any form. Simply advising users to 
update to git master's should suffice.

The simple-php-captcha.php file had a vulnerability enabling a client to 
generate the captcha response automatically, effectively bypassing the 
captcha.

Since the microtime() function was used both in the initial seed for the 
captcha and in the captcha url path sent to the client, it was possible 
to generate the captcha result automatically by running the same code 
client-side.

Could a CVE be assigned to this?

Thank you,
François

--------------060204070203060402010605--
