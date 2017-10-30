/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pdamoune <pdamoune@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/10/30 10:40:26 by pdamoune          #+#    #+#             */
/*   Updated: 2017/10/30 19:27:04 by pdamoune         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <header.h>

static t_cliopts	g_read_opts[] =
{
	{'h', "help", (1 << 0), 0, NULL, 0},
	{0, 0, 0, 0, 0, 0},
};

int		main(int ac, char **av)
{

	t_data_template	data;

	ft_bzero(&data, sizeof(t_data_template));
	if (cliopts_get(av, g_read_opts, &data))
		return (1);

	return (0);
}
