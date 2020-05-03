TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `x_do_barang_ins` AFTER INSERT ON `do_barang`\n FOR EACH ROW BEGIN\nupdate so_barang set tot_do = (select sum(qty) from do_barang where id_so_barang = NEW.id_so_barang) where id = NEW.id_so_barang;\nupdate do set tot_do = (select sum(qty) from do_barang where no_do = NEW.no_do) where no_do = NEW.no_do;\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER `x_do_barang_upd` AFTER UPDATE ON `do_barang`\n FOR EACH ROW BEGIN\nupdate so_barang set tot_do = (select sum(qty) from do_barang where id_so_barang = NEW.id_so_barang) where id = NEW.id_so_barang;\nupdate do set tot_do = (select sum(qty) from do_barang where no_do = NEW.no_do) where no_do = NEW.no_do;\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER `x_do_barang_del` AFTER DELETE ON `do_barang`\n FOR EACH ROW BEGIN\nupdate so_barang set tot_do = (select sum(qty) from do_barang where id_so_barang = OLD.id_so_barang) where id = OLD.id_so_barang;\nupdate do set tot_do = (select sum(qty) from do_barang where no_do = OLD.no_do) where no_do = OLD.no_do;\nEND'
sql_modes=524288 524288 524288
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='utf8' 'utf8' 'utf8'
connection_cl_names='utf8_general_ci' 'utf8_general_ci' 'utf8_general_ci'
db_cl_names='latin1_swedish_ci' 'latin1_swedish_ci' 'latin1_swedish_ci'
created=158385971526 158385971546 158385971559
