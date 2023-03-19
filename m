Received: (qmail 15772 invoked by uid 550); 19 Mar 2023 13:19:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3531 invoked from network); 19 Mar 2023 13:06:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679231166;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Po4RrMP5pvNQ1a3kpqhz2Wiq2B/Ii8URyQCH2KpN7+s=;
        b=q0jsMQ2ZWWg0eredbhXAEtlDQWRPWMZdLVeH9I7XYle92JbFy78LW2DUvdHOQFfEn8
         QHNKYjYmxnKA9dLZMCH/hfHJNPGRhXbUBt6AbwJ1MPy+KUZACsNxEh3q3uXIDB1L0nIC
         saqroE2vhitPFSq9mwinJ5Kh7/taW2hbc0IYImvaAiQWTxy49FcVOstXl0iuPA2qMFOM
         DCjGH901ZHHn9razkYPier5Ye7t7gPVnakWRMweViaRNxilWXxxLEzojrWn8+qUpfxYO
         Qhf0tM4s2LngjMZC2e9bHOL4CjmBrSU2Yc8Y7qRSWjGmLZagVMS8mdav0KnAvnCND9Us
         RHsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679231166;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Po4RrMP5pvNQ1a3kpqhz2Wiq2B/Ii8URyQCH2KpN7+s=;
        b=VpidOFGJjGFsjFvGZE1sokpVyi7s7ScSsEmnDhEBhHWYI9e09xzWmk6iMSi8F+ghCu
         VHBaPy853uR8LX49yhR2vybuLTVJ7UG2Z+6wYE/HJPVQUJ4knpXj7pLGPOXFqc8lVlUt
         +lHm8915fSBK4L1fPNWJdEo1z4mOd/D2nqNLNbxVvnqKpkzKYx8QLSvk5EkCIMGjeEhT
         5Zm/1dq2sNihoCPdeZp/VPWTmnBZnqtKFQR2BQsC8SOpDs6v9WMtlER3XeHapwpWKNAd
         cKlAdKQqw7dh5Q6lgetN0M6icGdxdjlVQb4M/OuZDv/L6kmhsfWyCGQnrXjC431F1pDj
         KYPA==
X-Gm-Message-State: AO0yUKVq+LT11FGPd/jMwO0+6rITee5JIHS/ITq0ZzpqPqPBhuagYHGH
	Wpwj3OF0JlzDb6eyrVgnRY77xAmwfwthlXp7ibGQlteZIYc=
X-Google-Smtp-Source: AK7set/sZqP5o5q7k4NeTjG9THVe4n/S8v6WmFDG1ymmqZzxtud/aCuEgpL5AZ+Sug3lIhuM7EDjVYFm4bks/3OUlOU=
X-Received: by 2002:a17:902:db09:b0:19a:7bd4:5b0d with SMTP id
 m9-20020a170902db0900b0019a7bd45b0dmr5427090plx.8.1679231166049; Sun, 19 Mar
 2023 06:06:06 -0700 (PDT)
MIME-Version: 1.0
From: Georgi Guninski <gguninski@gmail.com>
Date: Sun, 19 Mar 2023 15:05:24 +0200
Message-ID: <CAGUWgD-icAVmX4LER-Ctu_98WYKd833tnS0ePLsu72iChJWshg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] First result on google promotes insecure coding (XSS)

From my IP and cookie jar, searching google for
"tutorial python cgi" returns as first result [1]
on tutorialspoint.com

In "Simple URL Example:Get Method"

```
first_name = form.getvalue('first_name')
last_name  = form.getvalue('last_name')
print "<h2>Hello %s %s</h2>" % (first_name, last_name)
```

Besides cgi tutorial, this is XSS and CSRF tutorial by example.

Does the so called security "community" plan to reduce teaching
insecure code?

[1] https://www.tutorialspoint.com/python/python_cgi_programming.htm

-- 
We don't need no education, we don't need no thought control
Pink Floyd
