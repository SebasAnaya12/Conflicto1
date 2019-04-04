select *--holaaa
from tprovincia
where exists(
			select *
			from tcliente
			where codigo=provincia 
			and exists(
						select *
						from tvendedor
						where cod_ven=vendedor
						and titulacion="SUPERIOR"
						having count(*)<=2
			)
);