X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["594" "Sunday" "14" "April" "2019" "15:49:58" "+0300" "Tomer Brisker" "tbrisker@redhat.com" nil "18" nil "^Date:" nil nil "4" nil nil (number mark "U       tbrisker@red Apr 14   18/594   " thread-indent "\"[oss-security] CVE-2019-3893: Foreman: Compute resource credentials exposed during deletion on API\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-3893: Foreman: Compute resource credentials exposed during deletion on API" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9725 invoked by uid 550); 14 Apr 2019 12:50:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9700 invoked from network); 14 Apr 2019 12:50:46 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9+5aP9a4P6upvQDPSp9Kgyd6nfDjLceSWKFriWWN9cU=;
        b=X/YLV+tn6ClWNH6PryGWK//ouU/Toya4EFCepuk8Q6CG7EJU7y60cb9iylWdT04YIR
         LaTYT1IVwaPA1fcrEB8K/qbC/4aGi3xKIJQpTfFCEbaNWsGbgJOLYtZluKR2U3avsFne
         1cvxNHV/nY6zZmGJOXc7uOarZk/JDqpucqmfJ9WNu0kkT/bgx4TGDtktWEOaDmEvHnd+
         M+gvYOH4EIcyAnxnj/ht526GK2iNgl8Add/WUN+ZUNOpLd83Ajs0pmhBbF1tSuPQDzum
         Hp4Rct8+bzvjgLUEzjbgMRBAFPc2wshtWjNG097PHUwUoVxJvkXTijZQiENDaNiPm2RA
         MCQQ==
X-Gm-Message-State: APjAAAV0Jm85nKotWwmuNRmDJmTbXdqPTZZzhFE7omFMM14+X0ceLC4L
	L4GhwZxJ9JvEx3xka8dg4XS3A2byQ3jlqp1RzrEGt4jrQ4g=
X-Google-Smtp-Source: APXvYqxua5PaJEWxdIbYrUI/slf/temZgGjLsy+VQTgKIw+X/d5qIvuESCuhTHwWReRna2qqVJwwFLxws3ei+iRBopU=
X-Received: by 2002:a25:6c45:: with SMTP id h66mr57403328ybc.371.1555246234026;
 Sun, 14 Apr 2019 05:50:34 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAE=eJseTPHETZ75m9DZ-sbt7THgZSyk8S+KvqCVp27rZjvbE_w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Sun, 14 Apr 2019 15:49:58 +0300
From: Tomer Brisker <tbrisker@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-3893: Foreman: Compute resource credentials exposed during
 deletion on API
To: oss-security@lists.openwall.com

Hello,

An information disclosure vulnerability has been discovered in the Foreman API.

When deleting a compute resource via the API, the API responded with
details of the compute resource, including credentials in clear text.

Users not able to upgrade should ensure the `delete_compute_resource`
permission is not granted to users not trusted with the credentials.

This issue affects Foreman 1.1 and higher. The fix has been released
with Foreman 1.21.1.
Further details are available at https://projects.theforeman.org/issues/26450.

-- 
Have a nice day,
Tomer Brisker
Red Hat Engineering
