TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `x_faktur_beli_barang_ins` AFTER INSERT ON `faktur_beli_barang`\n FOR EACH ROW update faktur_beli set tot_amount_idr = (select ifnull(sum(line_total),0) from faktur_beli_barang where no_faktur = NEW.no_faktur and mata_uang = \'IDR\'), \ntot_amount_usd = (select ifnull(sum(line_total),0) from faktur_beli_barang where no_faktur = NEW.no_faktur and mata_uang = \'USD\')  \nwhere no_faktur = NEW.no_faktur' 'CREATE DEFINER=`root`@`localhost` TRIGGER `x_faktur_beli_barang_upd` AFTER UPDATE ON `faktur_beli_barang`\n FOR EACH ROW update faktur_beli set tot_amount_idr = (select ifnull(sum(line_total),0) from faktur_beli_barang where no_faktur = NEW.no_faktur and mata_uang = \'IDR\'), \ntot_amount_usd = (select ifnull(sum(line_total),0) from faktur_beli_barang where no_faktur = NEW.no_faktur and mata_uang = \'USD\')  \nwhere no_faktur = NEW.no_faktur'
sql_modes=524288 524288
definers='root@localhost' 'root@localhost'
client_cs_names='utf8' 'utf8'
connection_cl_names='utf8_general_ci' 'utf8_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci'
created=158385971611 158385971623
